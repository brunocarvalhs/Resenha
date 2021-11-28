import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';

abstract class ContactsRepository {
  Future<Either<Failure, List<dynamic>>> all();
}
