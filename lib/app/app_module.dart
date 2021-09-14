import 'package:flutter_modular/flutter_modular.dart';

import 'modules/login/login_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [LoginModule()];

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute<dynamic>> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute("/login", module: LoginModule()),
  ];
}
