import 'package:flutter/material.dart';
import 'package:resenha/app/themes/colors_themes.dart';
import 'package:resenha/app/utils/assets_utils.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
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
