import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/login/login_store.dart';
import 'package:resenha/app/shared/themes/app_colors.dart';
import 'package:resenha/app/shared/themes/app_images.dart';
import 'package:resenha/app/shared/themes/app_text_styles.dart';

import 'widgets/social_login_button_widget.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ModularState<LoginPage, LoginStore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.backgroundGradient,
      ),
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                child: Image.asset(
                  AppImages.backgroundLogin,
                ),
              ),
              Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Center(
                  child: Hero(
                    tag: AppImages.logo,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset(AppImages.logo),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.05,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 40),
                      child: Text(
                        "fique por\ndentro de todas Resenhas",
                        style: AppTextStyles.onboardTitleBold,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 40),
                      child: Text(
                        "Crie grupos para realizar seus roles favoritos com seus amigos",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.onboardSubtitle,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 40),
                      child: SocialLoginButtonWidget.google(
                        label: "Entrar com Google",
                        onTap: () => store.googleSignIn().then((value) => {
                          Modular.to.navigate("/home", arguments: store.state)
                        }),
                        styleLabel: AppTextStyles.button,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
