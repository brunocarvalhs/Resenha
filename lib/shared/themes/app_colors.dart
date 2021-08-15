import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

class AppColors {
  static final Color yellow = Color(0xFFFFCC00);
  static final Color purple = Color(0xFF4F0A95);
  static final Color purpleDark = Color(0xFF1F122F);
  static final Color white = Color(0xFFFFFFFF);
  static final Color black = Color(0xFF514766);
  static final Color grey = Color(0xFFDDE3F0);

  static final background = purple;
  static final backgroundDark = purpleDark;

  static final backgroundGradient = LinearGradient(
    colors: [purple, purpleDark],
    stops: [0.0, 1.0],
    transform: GradientRotation(pi / 2),
  );
}
