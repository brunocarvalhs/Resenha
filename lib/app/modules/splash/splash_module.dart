import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/splash/presenter/pages/splash_controller.dart';
import 'package:resenha/app/modules/splash/presenter/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => SplashController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SplashPage()),
  ];
}
