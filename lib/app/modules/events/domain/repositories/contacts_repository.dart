import 'package:contacts_service/contacts_service.dart';
import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';

abstract class ContactsRepository {
  Future<Either<Failure, List<Contact>>> all();
}
