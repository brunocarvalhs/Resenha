import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/home/home_page.dart';
import 'presenter/pages/register/register_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute<dynamic>> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
    ChildRoute("/event/register", child: (_, args) => RegisterPage()),
  ];
}
