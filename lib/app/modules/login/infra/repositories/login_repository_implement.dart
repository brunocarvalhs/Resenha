import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:resenha/app/modules/login/domain/entities/logged_user_information.dart';
import 'package:resenha/app/modules/login/domain/repositories/login_repository.dart';
import 'package:resenha/app/modules/login/infra/datasources/login_datasource.dart';

class LoginRepositoryImplement implements LoginRepository {

  final LoginDatasource datasource;

  LoginRepositoryImplement(this.datasource);

  @override
  Future<Either<ErrorGoogleLogged, LoggedUserInformation>> loginGoogle() async {
    try {
      var user = await datasource.loginGoogle();
      return Right(user);
    } on ErrorGoogleLogged catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<ErrorLogout, Unit>> logout() async {
    try {
      await datasource.logout();
      return Right(unit);
    } on ErrorLogout catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<ErrorLoggedUser, LoggedUserInformation>> loggedUser() async {
    try {
      var user = await datasource.currentUser();
      return Right(user);
    } on ErrorLoggedUser catch (e) {
      return Left(e);
    }
  }

}