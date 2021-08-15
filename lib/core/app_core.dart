import 'package:flutter/material.dart';
import 'package:resenha/core/app_routers.dart';
import 'package:resenha/core/app_theme.dart';

class AppCore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      initialRoute: AppRouter.initialRouter,
      routes: AppRouter.router,
    );
  }
}
