import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:local_auth/local_auth.dart';
import 'package:resenha/app/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthStore extends NotifierStore<Exception, UserModel> {

  AuthStore() : super(Modular.get<UserModel>());

  bool get isLogged => state.isNotEmpty();

  UserModel get user => state;

  void setUser(UserModel value) => update(value);

  Future<bool> checkLogin() async {
    final share = await Modular.getAsync<SharedPreferences>();
    final biometric = await authenticateWithBiometrics();
    var result = share.containsKey("user");
    if (result && biometric) {
      final json = share.get("user") as String;
      update(UserModel.fromJson(json));
    }
    return result;
  }

  Future signOut() async {
    final instance = await SharedPreferences.getInstance();
    instance.remove("user");
  }

  static Future<bool> authenticateWithBiometrics() async {
    final LocalAuthentication localAuthentication = LocalAuthentication();
    bool isBiometricSupported = await localAuthentication.isDeviceSupported();
    bool canCheckBiometrics = await localAuthentication.canCheckBiometrics;

    bool isAuthenticated = false;

    if (isBiometricSupported && canCheckBiometrics) {
      isAuthenticated = await localAuthentication.authenticate(
        localizedReason: 'Please complete the biometrics to proceed.',
        biometricOnly: true,
      );
    }

    return isAuthenticated;
  }

  static Future<bool> checkBiometricUser() async {
    return true;
  }
}
