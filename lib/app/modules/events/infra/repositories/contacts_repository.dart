import 'package:contacts_service/contacts_service.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/repositories/contacts_repository.dart';
import 'package:resenha/app/modules/events/infra/datasource/contacts_datasource.dart';

class ContactsRepositoryImpl extends ContactsRepository {
  final ContactsDataSource datasource;

  ContactsRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, List<Contact>>> all() async {
    try {
      var contacts = await datasource.get();
      return Right(contacts);
    } catch (e) {
      return Left(ErrorCreate(message: "Error ao tentar criar evento"));
    }
  }
}
