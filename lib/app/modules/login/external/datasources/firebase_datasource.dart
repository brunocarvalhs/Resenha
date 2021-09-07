import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:resenha/app/modules/login/infra/datasources/login_datasource.dart';
import 'package:resenha/app/modules/login/infra/models/user_model.dart';

class FirebaseDatasourceImplement implements LoginDatasource {
  final FirebaseAuth auth;

  FirebaseDatasourceImplement(this.auth);

  @override
  Future<UserModel> currentUser() async {
    var user = auth.currentUser;
   
    if (user == null) throw ErrorGetLoggedUser();
   
    return UserModel(
        name: user.displayName!,
        phoneNumber: user.phoneNumber!,
        email: user.email!,
        photoURL: user.photoURL!);
  }

  @override
  Future<UserModel> loginGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final user = (await auth.signInWithCredential(credential)).user;

    if (user == null) throw ErrorGetLoggedUser();

    return UserModel(
      name: user.displayName!,
      photoURL: user.photoURL!,
      email: user.email!,
      phoneNumber: user.phoneNumber!,
    );
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }
}
