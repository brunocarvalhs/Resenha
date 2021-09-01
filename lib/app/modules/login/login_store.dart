import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:resenha/app/core/stores/auth_store.dart';
import 'package:resenha/app/shared/models/user_model.dart';

class LoginStore extends NotifierStore<Exception, AuthStore> {
  LoginStore() : super(Modular.get<AuthStore>());

  Future<void> googleSignIn() async {
    setLoading(true);

    GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
    try {
      final response = await _googleSignIn.signIn();
      final user = UserModel(
        name: response!.displayName!,
        photoURL: response.photoUrl!,
      );
      state.setUser(user);
      update(state);
    } catch (error) {
      setError(Exception(error));
    }
    setLoading(false);
  }
  
}
