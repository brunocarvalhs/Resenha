import 'package:flutter/material.dart';
import 'package:resenha/shared/auth/auth_controller.dart';
import 'package:resenha/shared/themes/app_images.dart';
import 'package:resenha/shared/widgets/logo_hero/logo_hero_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      body: Center(
        child: LogoHeroWidget(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: const EdgeInsets.only(bottom: 20),
          photo: AppImages.logo,
        ),
      ),
    );
  }
}
