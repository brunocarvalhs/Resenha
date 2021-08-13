import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

class AppColors {
  static final yellow = Color(0xFFFFCC00);
  static final purple = Color(0xFF4F0A95);
  static final purpleDark = Color(0xFF1F122F);

  static final background = purple;
  static final backgroundDark = purpleDark;

  static final backgroundGradient = LinearGradient(
    colors: [purple, purpleDark],
    stops: [0.0, 1.0],
    transform: GradientRotation(pi / 2),
  );
}
