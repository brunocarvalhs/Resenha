import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'presenter/stores/auth_store.dart';
import 'domain/usecases/get_logged_user.dart';
import 'domain/usecases/login_with_google.dart';
import 'domain/usecases/logount.dart';
import 'presenter/pages/login/login_controller.dart';
import 'presenter/pages/login/login_page.dart';
import 'external/datasource/login_data_source.dart';
import 'infra/repositories/login_repository.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => GoogleSignIn(), export: true),
    Bind.lazySingleton((i) => AuthStore(i.get<GetLoggedUserImpl>(), i.get<LogoutImpl>()), export: true),
    Bind.lazySingleton((i) => LogoutImpl(i.get<LoginRepositoryImpl>()), export: true),
    Bind.lazySingleton((i) => GetLoggedUserImpl(i.get<LoginRepositoryImpl>()), export: true),
    Bind.lazySingleton((i) => LoginRepositoryImpl(i.get<LoginDataSourceImpl>()), export: true),
    Bind.lazySingleton((i) => LoginDataSourceImpl(i.get<GoogleSignIn>()), export: true),
    Bind.lazySingleton((i) => LoginWithGoogleImpl(i.get<LoginRepositoryImpl>())),
    Bind.lazySingleton((i) => LoginController(i.get<LoginWithGoogleImpl>(), i.get<AuthStore>())),
  ];

  @override
  final List<ModularRoute<dynamic>> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => LoginPage()),
  ];
}
