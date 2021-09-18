import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/home/home_module.dart';

import 'modules/login/login_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [LoginModule()];

  @override
  final List<Bind> binds = [Bind.instance(Firebase.initializeApp())];

  @override
  final List<ModularRoute<dynamic>> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute("/login", module: LoginModule()),
    ModuleRoute("/home", module: HomeModule()),
  ];
}
