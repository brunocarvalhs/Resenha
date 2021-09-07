import 'package:flutter_triple/flutter_triple.dart';
import 'package:resenha/app/modules/login/domain/entities/logged_user_information.dart';
import 'package:resenha/app/modules/login/domain/usecases/get_logged_user.dart';
import 'package:resenha/app/modules/login/domain/usecases/logout.dart';

// ignore: must_be_immutable
class AuthStore extends NotifierStore<Exception, LoggedUserInformation> {
  final GetLoggedUser getLoggedUser;
  final Logout logout;
  LoggedUserInformation user;

  AuthStore(this.getLoggedUser, this.logout, this.user) : super(user);

  // ignore: unnecessary_null_comparison
  bool get isLogged => user != null;

  void setUser(LoggedUserInformation? value) => {
    if(value != null) update(value)
  };

  Future<bool> checkLogin() async {
    var result = await getLoggedUser();
    return result.fold((l) => false, (user) {
      setUser(user);
      return true;
    });
  }

  Future signOut() async {
    var result = await logout();
    result.fold((l) {
      return true;
    }, (r) {
      setUser(null);
    });
  }
}
