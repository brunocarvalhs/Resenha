import 'package:resenha/app/modules/login/domain/usecases/get_logged_user.dart';
import 'package:resenha/app/modules/login/domain/usecases/logount.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/login/presenter/pages/login_page.dart';

import 'external/datasource/login_data_source.dart';
import 'infra/repositories/login_repository.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LogoutImpl(i.get<LoginRepositoryImpl>())),
    Bind.lazySingleton((i) => GetLoggedUserImpl(i.get<LoginRepositoryImpl>())),
    Bind.lazySingleton((i) => LoginRepositoryImpl(i.get<LoginDataSourceImpl>())),
    Bind.lazySingleton((i) => LoginDataSourceImpl()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => LoginPage()),
  ];
}
