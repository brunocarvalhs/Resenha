import 'package:resenha/app/modules/login/domain/entities/logged_user.dart';
import 'package:resenha/app/modules/login/domain/entities/logged_user_info.dart';

class UserModel extends LoggedUser implements LoggedUserInfo {
  UserModel({
    String? name,
    required String email,
    String? photoUrl,
  }) : super(
          name: name,
          email: email,
          photoUrl: photoUrl,
        );

  LoggedUser toLoggedUser() => this;
}
