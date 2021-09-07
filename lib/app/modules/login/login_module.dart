import 'package:flutter_modular/flutter_modular.dart';

import 'package:resenha/app/modules/login/domain/usecases/get_logged_user.dart';
import 'package:resenha/app/modules/login/domain/usecases/logout.dart';
import 'package:resenha/app/modules/login/external/datasources/firebase_datasource.dart';
import 'package:resenha/app/modules/login/external/drivers/flutter_connectivity_driver.dart';
import 'package:resenha/app/modules/login/infra/repositories/login_repository_implement.dart';
import 'package:resenha/app/modules/login/infra/services/connectivity_service_implement.dart';
import 'package:resenha/app/modules/login/presenter/pages/login/login_page.dart';
import 'package:resenha/app/modules/login/presenter/pages/login/login_store.dart';

class LoginModule extends Module {
  static List<Bind> export = [
    Bind((i) => GetLoggedUserImplement(i.get())),
    Bind((i) => LogoutImplement(i.get())),
    Bind((i) => LoginRepositoryImplement(i.get())),
    Bind((i) => FirebaseDatasourceImplement(i.get())),
  ];

  @override
  final List<Bind> binds = [
    Bind((i) => LoginStore(i.get(), i.get())),
    Bind((i) => ConnectivityServiceImplement(i.get())),
    Bind((i) => FlutterConnectivityDriver(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => LoginPage()),
  ];
}
