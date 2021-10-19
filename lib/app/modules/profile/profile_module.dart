import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/profile/presenter/pages/login/profile_controller.dart';

import 'presenter/pages/login/profile_page.dart';

class ProfileModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProfileController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ProfilePage()),
  ];
}
