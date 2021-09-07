import 'package:resenha/app/modules/login/domain/entities/logged_user.dart';
import 'package:resenha/app/modules/login/domain/entities/logged_user_information.dart';

class UserModel extends LoggedUser implements LoggedUserInformation {
  UserModel({
    required String name,
    required String email,
    required String phoneNumber,
    required String photoURL,
  }) : super(
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          photoURL: photoURL
        );

  LoggedUser toLoggedUser() => this;
}
