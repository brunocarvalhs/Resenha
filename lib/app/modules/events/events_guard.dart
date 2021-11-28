import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';

class EventsGuard extends RouteGuard {
  EventsGuard() : super(redirectTo: '/login');

  @override
  FutureOr<bool> canActivate(String path, ParallelRoute<dynamic> route) {
    return Modular.get<AuthStore>().isLogged;
  }
}
