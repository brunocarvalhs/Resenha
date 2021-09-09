import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/login/domain/entities/logged_user_information.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:resenha/app/modules/login/domain/repositories/login_repository.dart';


abstract class LoginGoogle {
  Future<Either<FailureLogin, LoggedUserInformation>> call();
}

class LogginGoogleImplement implements LoginGoogle {
  final LoginRepository repository;

  LogginGoogleImplement(this.repository);

  @override
  Future<Either<FailureLogin, LoggedUserInformation>> call() async {
    return await repository.loginGoogle();
  }
}