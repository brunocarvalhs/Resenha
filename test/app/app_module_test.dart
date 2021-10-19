import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:resenha/app/app_module.dart';

import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';

void main() {
  setUpAll(() {
    initModule(AppModule());
  });

  group("AppModule - ", () {
    test("get global instance AuthStore", () {
      final result = Modular.get<AuthStore>();
      expect(result, isA<AuthStore>());
    });
  });
}
