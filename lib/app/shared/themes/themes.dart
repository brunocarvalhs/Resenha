import 'package:flutter/material.dart';

class Themes {
  static ThemeData light() {
    return new ThemeData(
      brightness: Brightness.light, 
      scaffoldBackgroundColor: Colors.transparent
    );
  }

  static ThemeData dark() {
    return new ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.transparent
    );
  }
}
