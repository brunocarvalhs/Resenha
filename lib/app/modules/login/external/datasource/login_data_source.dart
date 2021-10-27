import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/errors/errors.dart';
import '../../infra/models/user_model.dart';
import '../../infra/datasource/login_data_source.dart';

class LoginDataSourceImpl implements LoginDataSource {
  final GoogleSignIn googleSignIn;
  final SharedPreferences secureStorage;

  LoginDataSourceImpl(this.googleSignIn, this.secureStorage);

  @override
  Future<UserModel> currentUser() async {
    var auth = googleSignIn.currentUser;
    if (auth != null) {
      return UserModel(
        name: auth.displayName,
        photoUrl: auth.photoUrl,
        email: auth.email,
      );
    }

    var storage = secureStorage.get("auth");
    if (storage != null) return UserModel.fromJson(storage.toString());

    throw ErrorGetLoggedUser();
  }

  @override
  Future<void> logout() async {
    await secureStorage.remove("auth");
    return await googleSignIn.signOut().then((value) => null);
  }

  @override
  Future<UserModel> login() async {
    var auth = await googleSignIn.signIn();
    if (auth == null) throw ErrorLogin();
    var user = UserModel(
      name: auth.displayName,
      email: auth.email,
      photoUrl: auth.photoUrl,
    );
    await secureStorage.setString("auth", user.toJson());
    return user;
  }
}
