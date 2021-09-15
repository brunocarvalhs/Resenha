import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/login/presenter/pages/login/login_controller.dart';
import 'package:resenha/app/modules/login/presenter/widgets/social_login_button_widget.dart';
import 'package:resenha/app/themes/colors_themes.dart';
import 'package:resenha/app/themes/texts_styles_themes.dart';
import 'package:resenha/app/utils/assets_utils.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorsThemes.backgroundGradient,
        image: DecorationImage(
          image: AssetImage(backgroundLogin),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          repeat: ImageRepeat.noRepeat,
        ),
      ),
      padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 313,
                height: 235,
                padding: const EdgeInsets.only(bottom: 20),
                child: Image.asset(logo),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "fique por \ndentro de todas\nResenhas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffdce2ef),
                    fontSize: 40,
                    fontFamily: "Rajdhani",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Crie grupos para realizar seus roles\nfavoritos com seus amigos",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffdce2ef),
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 42),
                SocialLoginButtonWidget.google(
                  label: "Entrar com Google",
                  onTap: () => controller.enterGoogle(),
                  styleLabel: AppTextStyles.button,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
