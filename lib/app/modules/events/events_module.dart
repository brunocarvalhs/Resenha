import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/presenter/pages/list/list_controller.dart';
import 'package:resenha/app/modules/events/presenter/pages/read/read_controller.dart';
import 'package:resenha/app/modules/events/presenter/pages/read/register_page.dart';
import 'package:resenha/app/modules/events/presenter/pages/register/register_controller.dart';

import 'presenter/pages/list/list_page.dart';
import 'presenter/pages/register/register_page.dart';

class EventsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => ListController(i.get())),
    Bind.singleton((i) => ReadController()),
    Bind.singleton((i) => RegisterController()),
  ];

  @override
  final List<ModularRoute<dynamic>> routes = [
    ChildRoute("/", child: (_, args) => ListPage()),
    ChildRoute("/read", child: (_, args) => ReadPage()),
    ChildRoute("/register", child: (_, args) => RegisterPage()),
  ];
}
