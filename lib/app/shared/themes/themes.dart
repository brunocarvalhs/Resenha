import 'package:flutter/material.dart';

class Themes {
  static ThemeData light() {
    return ThemeData(brightness: Brightness.light, scaffoldBackgroundColor: Colors.transparent);
  }

  static ThemeData dark() {
    return ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: Colors.transparent);
  }
}
