import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/repositories/contacts_repository.dart';

import '../../domain/errors/errors.dart';

abstract class ListContacts {
  Future<Either<Failure, List<dynamic>>> call();
}

class ListContactsImpl extends ListContacts {
  final ContactsRepository repository;

  ListContactsImpl(this.repository);

  @override
  Future<Either<Failure, List<dynamic>>> call() async {
    return await repository.all();
  }
}
