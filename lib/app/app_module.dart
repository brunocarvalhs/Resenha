import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/core/stores/auth_store.dart';
import 'package:resenha/app/modules/home/home_module.dart';
import 'core/pages/splash_screen_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => Firebase.initializeApp()),
    Bind.lazySingleton((i) => AuthStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SplashScreenPage()),
    ModuleRoute("/home", module: HomeModule()),
  ];
}
