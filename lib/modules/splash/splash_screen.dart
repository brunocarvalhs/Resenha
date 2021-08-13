import 'package:flutter/material.dart';
import 'package:resenha/shared/auth/auth_controller.dart';
import 'package:resenha/shared/themes/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              padding: const EdgeInsets.only(bottom: 20),
              child: Image.asset(AppImages.logo),
            ),
          ],
        ),
      ),
    );
  }
}
