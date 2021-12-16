import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/errors/errors.dart';
import '../../infra/models/user_model.dart';
import '../../infra/datasource/login_data_source.dart';

class LoginDataSourceImpl implements LoginDataSource {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  final SharedPreferences secureStorage;
  final FirebaseFirestore firebaseFirestore;

  LoginDataSourceImpl(this.googleSignIn, this.secureStorage, this.firebaseAuth, this.firebaseFirestore);

  @override
  Future<UserModel> currentUser() async {
    var auth = firebaseAuth.currentUser;
    if (auth != null) {
      return UserModel(
        id: auth.uid,
        name: auth.displayName,
        photoUrl: auth.photoURL,
        email: auth.email,
        phone: auth.phoneNumber,
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
    var googleUser = await googleSignIn.signIn();
    if (googleUser == null) throw ErrorLogin();
    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final auth = await firebaseAuth.signInWithCredential(credential);

    var user = UserModel(
      id: auth.user!.uid,
      name: auth.user?.displayName,
      email: auth.user?.email,
      photoUrl: auth.user?.photoURL,
      phone: auth.user?.phoneNumber,
    );

    await secureStorage.setString("auth", user.toJson());

    await firebaseFirestore.collection("users").doc(user.id).set(user.toMap());

    return user;
  }
}
