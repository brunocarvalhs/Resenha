import 'package:flutter/material.dart';
import 'package:resenha/modules/login/login_controller.dart';
import 'package:resenha/shared/themes/app_images.dart';
import 'package:resenha/modules/login/widgets/social_login_button_widget.dart';

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
                child: Container(
                  width: size.width * 0.6,
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset(AppImages.logo),
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
                        const EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: Text(
                      "fique por dentro de todas Resenhas",
                      style: TextStyle(
                        color: Color(0xFFDDE3F0),
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: Text(
                      "Crie grupos para realizar seus roles favoritos com seus amigos",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFDDE3F0),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: SocialLoginButtonWidget.google(
                      label: "Entrar com Google",
                      onTap: () => controller.googleSignIn(context),
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
