import '../../infra/models/user_model.dart';
import '../../infra/datasource/login_data_source.dart';

class LoginDataSourceImpl implements LoginDataSource {
  LoginDataSourceImpl();

  @override
  Future<UserModel> currentUser() async {
    return UserModel(
      name: 'user.displayName',
      phoneNumber: 'user.phoneNumber',
      email: 'user.email',
    );
  }

  @override
  Future<void> logout() async {
    return;
  }
}
