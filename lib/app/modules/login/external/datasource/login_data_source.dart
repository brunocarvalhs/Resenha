import 'package:google_sign_in/google_sign_in.dart';

import '../../domain/errors/errors.dart';
import '../../infra/models/user_model.dart';
import '../../infra/datasource/login_data_source.dart';

class LoginDataSourceImpl implements LoginDataSource {
  final GoogleSignIn auth;

  LoginDataSourceImpl(this.auth);

  @override
  Future<UserModel> currentUser() async {
    var user = await auth.currentUser;
    if (user == null) throw ErrorGetLoggedUser();

    return UserModel(
      name: user.displayName,
      photoUrl: user.photoUrl,
      email: user.email,
    );
  }

  @override
  Future<void> logout() async {
    return await auth.signOut().then((value) => null);
  }

  @override
  Future<UserModel> login() async {
    var user = await auth.signIn();
    if (user == null) throw ErrorLogin();
    return UserModel(
      name: user.displayName,
      email: user.email,
      photoUrl: user.photoUrl,
    );
  }
}
