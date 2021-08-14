import 'package:flutter/material.dart';
import 'package:resenha/modules/event/event_new_screen.dart';
import 'package:resenha/modules/profile/profile_screen.dart';
import 'package:resenha/shared/models/user_model.dart';
import 'package:resenha/shared/themes/app_colors.dart';

import 'package:resenha/modules/home/home_screen.dart';
import 'package:resenha/modules/login/login_screen.dart';
import 'package:resenha/modules/splash/splash_screen.dart';

class AppRouter {
  static final String initialRouter = "/splash";

  static final router = <String, WidgetBuilder>{
    "/splash": (BuildContext context) => base(SplashScreen()),
    "/login": (BuildContext context) => base(LoginScreen()),
    "/home": (BuildContext context) => base(
          HomeScreen(
            user: ModalRoute.of(context)!.settings.arguments as UserModel,
          ),
        ),
    "/event/new": (BuildContext context) => base(EventNewScreen()),
    "/profile": (BuildContext context) => base(
          ProfileScreen(
            user: ModalRoute.of(context)!.settings.arguments as UserModel,
          ),
        ),
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
