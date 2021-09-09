import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/login/domain/entities/logged_user_information.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:resenha/app/modules/login/domain/repositories/login_repository.dart';

abstract class GetLoggedUser {
  Future<Either<ErrorLoggedUser, LoggedUserInformation>> call();
}

class GetLoggedUserImplement implements GetLoggedUser {
  final LoginRepository repository;

  GetLoggedUserImplement(this.repository);

  @override
  Future<Either<ErrorLoggedUser, LoggedUserInformation>> call() async {
    return await repository.loggedUser();
  }
}