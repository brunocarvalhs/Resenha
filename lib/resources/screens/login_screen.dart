import 'package:flutter/material.dart';
import 'package:resenha/app/controllers/login_controller.dart';
import 'package:resenha/core/app_dimens.dart';
import 'package:resenha/core/app_images.dart';
import 'package:resenha/resources/widgets/social_login_button_widget.dart';

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
              child: Image.asset(AppImages.backgroundLogin),
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset(AppImages.logo),
                ),
              ),
            ),
            Positioned(
              bottom: size.height * 0.05,
              left: 0,
              right: 0,
              child: Padding(
                padding: AppDimens.appPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "fique por dentro de todas Resenhas",
                      style: TextStyle(
                        color: Color(0xFFDDE3F0),
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 14),
                    Text(
                      "Crie grupos para realizar seus roles favoritos com seus amigos",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFDDE3F0),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 14),
                    SocialLoginButtonWidget.google(
                      label: "Entrar com Google",
                      onTap: () => controller.googleSignIn(context),
                    ),
                    SizedBox(height: 14),
                    SocialLoginButtonWidget.facebook(
                      label: "Entrar com Facebook",
                      onTap: () => {},
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
