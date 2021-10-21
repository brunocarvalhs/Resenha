import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/app_guard.dart';
import 'package:resenha/app/shared/guards/auth_guard.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'modules/splash/splash_module.dart';
import 'modules/login/login_module.dart';
import 'modules/events/events_module.dart';
import 'modules/profile/profile_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        SplashModule(),
        LoginModule(),
        EventsModule(),
        ProfileModule(),
      ];

  @override
  final List<Bind> binds = [
    Bind.instance(Firebase.initializeApp()),
    AsyncBind<SharedPreferences>((i) => SharedPreferences.getInstance()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule(), guards: [AppGuard(Modular.initialRoute)]),
    ModuleRoute("/login", module: LoginModule()),
    ModuleRoute("/events", module: EventsModule(), guards: [AuthGuard()]),
    ModuleRoute("/profile", module: ProfileModule(), guards: [AuthGuard()]),
  ];
}
