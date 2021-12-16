import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/app_guard.dart';
import 'package:resenha/app/shared/guards/auth_guard.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'modules/splash/splash_module.dart';
import 'modules/login/login_module.dart';
import 'modules/events/events_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        SplashModule(),
        LoginModule(),
        EventsModule(),
      ];

  @override
  final List<Bind> binds = [
    Bind.instance<FirebaseApp>(Firebase.app()),
    Bind.instance<FirebaseAnalytics>(FirebaseAnalytics()),
    Bind.instance<FirebaseMessaging>(FirebaseMessaging.instance),
    Bind.instance<FirebaseFirestore>(FirebaseFirestore.instance),
    Bind.instance<FirebaseStorage>(FirebaseStorage.instance),
    Bind.lazySingleton<FirebaseAnalyticsObserver>((i) => FirebaseAnalyticsObserver(analytics: i.get())),
    AsyncBind<SharedPreferences>((i) => SharedPreferences.getInstance()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule(), guards: [AppGuard(Modular.initialRoute)]),
    ModuleRoute("/login", module: LoginModule()),
    ModuleRoute("/events", module: EventsModule(), guards: [AuthGuard()]),
  ];
}
