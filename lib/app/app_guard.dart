import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/app_module.dart';

class AppGuard extends RouteGuard {
  AppGuard(String? guardedRoute) : super(redirectTo: guardedRoute);

  @override
  Future<bool> canActivate(String path, ModularRoute router) async {
    await Modular.isModuleReady<AppModule>();
    return true;
  }
}
