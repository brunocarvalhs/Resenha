import 'package:flutter/material.dart';
import 'package:resenha/app/shared/themes/colors_themes.dart';

class Themes {
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: ColorsThemes.purple,
      splashColor: ColorsThemes.purple,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
        bodyText2: TextStyle(
          color: Colors.white,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: Colors.white,
        focusColor: Colors.white,
        hoverColor: Colors.white,
      ),
      iconTheme: const IconThemeData(
        color: ColorsThemes.primary,
        size: 20,
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: ColorsThemes.purple,
      splashColor: ColorsThemes.purple,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
        bodyText2: TextStyle(
          color: Colors.white,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: Colors.white,
        focusColor: Colors.white,
        hoverColor: Colors.white,
      ),
      iconTheme: const IconThemeData(
        color: ColorsThemes.primary,
        size: 20,
      ),
    );
  }
}
