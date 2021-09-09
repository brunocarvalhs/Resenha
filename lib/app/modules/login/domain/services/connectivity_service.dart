import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';

abstract class ConnectivityService {
  Future<Either<FailureLogin, bool>> isOnline();
}