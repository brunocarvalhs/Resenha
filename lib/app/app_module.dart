import 'package:resenha/app/modules/login/login_module.dart';
import 'package:resenha/app/modules/profile/profile_store.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/core/stores/auth_store.dart';
import 'package:resenha/app/modules/home/home_module.dart';
import 'package:resenha/app/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/pages/splash_screen_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => Firebase.initializeApp()),
    Bind.lazySingleton((i) => UserModel()),
    Bind.lazySingleton((i) => AuthStore()),
    AsyncBind((i) => SharedPreferences.getInstance()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SplashScreenPage()),
    ModuleRoute("/login", module: LoginModule()),
    ModuleRoute("/home", module: HomeModule()),
  ];
}
