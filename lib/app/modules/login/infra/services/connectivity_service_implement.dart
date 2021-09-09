import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/login/domain/services/connectivity_service.dart';
import 'package:resenha/app/modules/login/infra/drivers/connectivity_driver.dart';

class ConnectivityServiceImplement implements ConnectivityService {
  final ConnectivityDriver driver;

  ConnectivityServiceImplement(this.driver);

  @override
  Future<Either<FailureLogin, bool>> isOnline() async {
    try {
      var check = await driver.isOnline;
      if (check) return Right(check);
      throw ConnectionError();
    } on ConnectionError catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ConnectionError());
    }
  }
}
