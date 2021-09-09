import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/core/stores/auth_store.dart';
import 'package:resenha/app/shared/themes/app_colors.dart';
import 'package:resenha/app/shared/themes/app_images.dart';

class SplashScreenPage extends StatelessWidget {
  SplashScreenPage() {
    Modular.get<AuthStore>().checkLogin().then((v) {
      return Future.delayed(Duration(seconds: 3));
    }).then((value) {
      Modular.to.navigate('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.backgroundGradient,
      ),
      child: Scaffold(
        body: Center(
          child: Hero(
            tag: AppImages.logo,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              padding: const EdgeInsets.only(bottom: 20),
              child: Image.asset(AppImages.logo),
            ),
          ),
        ),
      ),
    );
  }
}
