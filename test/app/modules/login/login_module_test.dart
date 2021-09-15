import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:resenha/app/modules/login/domain/usecases/get_logged_user.dart';
import 'package:resenha/app/modules/login/domain/usecases/login_with_google.dart';
import 'package:resenha/app/modules/login/domain/usecases/logount.dart';
import 'package:resenha/app/modules/login/login_module.dart';
import 'package:resenha/app/modules/login/presenter/pages/login/login_controller.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';

void main() {
  setUpAll(() {
    initModule(LoginModule());
  });

  group("feat(login) - LoginModule", () {
    test("get AuthStore", () {
      final result = Modular.get<AuthStore>();
      expect(result, isA<AuthStore>());
    });

    test("get LogoutImpl", () {
      final result = Modular.get<LogoutImpl>();
      expect(result, isA<LogoutImpl>());
    });

    test("get GetLoggedUserImpl", () {
      final result = Modular.get<GetLoggedUserImpl>();
      expect(result, isA<GetLoggedUserImpl>());
    });

    test("get LoginController", () {
      final result = Modular.get<LoginController>();
      expect(result, isA<LoginController>());
    });

    test("get LoginWithGoogleImpl", () {
      final result = Modular.get<LoginWithGoogleImpl>();
      expect(result, isA<LoginWithGoogleImpl>());
    });
  });
}
