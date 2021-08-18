import 'package:flutter/material.dart';
import 'package:resenha/modules/login/login_controller.dart';
import 'package:resenha/shared/themes/app_images.dart';
import 'package:resenha/modules/login/widgets/social_login_button_widget.dart';
import 'package:resenha/shared/themes/app_text_styles.dart';
import 'package:resenha/shared/widgets/logo_hero/logo_hero_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
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
                child: LogoHeroWidget(
                  width: MediaQuery.of(context).size.width * 0.7,
                  padding: const EdgeInsets.only(bottom: 20),
                  photo: AppImages.logo,
                ),
              ),
            ),
            Positioned(
              bottom: size.height * 0.05,
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
                      onTap: () => controller.googleSignIn(context),
                      styleLabel: AppTextStyles.button,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
