import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:resenha/app/core/stores/auth_store.dart';
import 'package:resenha/app/modules/login/infra/repositories/login_repository_implement.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:asuka/asuka.dart' as asuka;

class LoginStore extends NotifierStore<Exception, AuthStore> {
  final LoginRepositoryImplement repository;
  final AuthStore authStore;

  LoginStore(this.authStore, this.repository) : super(authStore);

  enterGoogle() async {
    setLoading(true);
    var result = await repository.loginGoogle();
    setLoading(false);
    result.fold((failure) {
      asuka.showSnackBar(SnackBar(content: Text(failure.toString())));
    }, (user) {
      authStore.setUser(user);
      Modular.to.popUntil(ModalRoute.withName(Modular.to.modulePath));
      Modular.to.pop();
    });
  }
}
