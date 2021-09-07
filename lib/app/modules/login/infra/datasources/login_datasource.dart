import 'package:resenha/app/modules/login/infra/models/user_model.dart';

abstract class LoginDatasource {
  Future<UserModel> loginGoogle();
  Future<UserModel> currentUser();
  Future<void> logout();
}