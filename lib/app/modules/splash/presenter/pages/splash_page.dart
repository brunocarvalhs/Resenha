import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/themes/colors_themes.dart';
import 'package:resenha/app/utils/assets_utils.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  SplashPageState() {
    Modular.get<AuthStore>().checkLogin().then((v) {
      return Future.delayed(Duration(seconds: 1));
    }).then((value) {
      Modular.to.pushNamedAndRemoveUntil("/", (_) => false);
    });
    Future.delayed(Duration(seconds: 3)).then((value) => Modular.to.pushReplacementNamed("/login"));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorsThemes.backgroundGradient,
      ),
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            padding: const EdgeInsets.only(bottom: 20),
            child: Image.asset(logo, key: Key("logo")),
          ),
        ),
      ),
    );
  }
}
