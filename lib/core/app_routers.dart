import 'package:flutter/material.dart';
import 'package:resenha/core/app_colors.dart';
import 'package:resenha/resources/screens/login_screen.dart';
import 'package:resenha/resources/screens/splash_screen.dart';

class AppRouter {
  static final String initialRouter = "/login";

  static final router = <String, WidgetBuilder>{
    "/splash": (BuildContext context) => base(SplashScreen()),
    "/login": (BuildContext context) => base(LoginScreen())
  };

  static Widget base(Widget widget) {
    return Container(
        decoration: BoxDecoration(
          gradient: AppColors.backgroundGradient,
        ),
        child: widget,
      );
  }
}