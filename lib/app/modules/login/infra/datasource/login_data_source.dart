import '../../infra/models/user_model.dart';

abstract class LoginDataSource {
  Future<UserModel> currentUser();
  Future<void> logout();
}
