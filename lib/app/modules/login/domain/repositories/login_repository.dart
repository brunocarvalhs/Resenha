import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/login/domain/entities/logged_user_information.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';

abstract class LoginRepository {
  Future<Either<ErrorGoogleLogged, LoggedUserInformation>> loginGoogle();
  Future<Either<ErrorLoggedUser, LoggedUserInformation>> loggedUser();
  Future<Either<ErrorLogout, Unit>> logout();
}
