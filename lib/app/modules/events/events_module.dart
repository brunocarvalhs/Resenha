import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/list/list_controller.dart';
import 'presenter/pages/read/read_controller.dart';
import 'presenter/pages/read/read_page.dart';
import 'presenter/pages/register/register_controller.dart';
import 'presenter/pages/list/list_page.dart';
import 'presenter/pages/register/register_page.dart';
import 'presenter/pages/search/search_page.dart';
import 'presenter/stores/events_store.dart';

class EventsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EventsStore(), export: true),
    Bind.lazySingleton((i) => ListController(i.get(), i.get())),
    Bind.lazySingleton((i) => ReadController()),
    Bind.lazySingleton((i) => RegisterController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ListPage()),
    ChildRoute("/read/:id", child: (_, args) => ReadPage()),
    ChildRoute("/register", child: (_, args) => RegisterPage()),
    ChildRoute("/search", child: (_, args) => SearchPage()),
  ];
}
