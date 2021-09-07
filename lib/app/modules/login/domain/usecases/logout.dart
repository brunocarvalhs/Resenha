import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:resenha/app/modules/login/domain/repositories/login_repository.dart';

abstract class Logout {
  Future<Either<FailureLogin, Unit>> call();
}

class LogoutImplement extends Logout {
  final LoginRepository repository;

  LogoutImplement(this.repository);

  @override
  Future<Either<FailureLogin, Unit>> call() async {
    return await repository.logout();
  }
  
}