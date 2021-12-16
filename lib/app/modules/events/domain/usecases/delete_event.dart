import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';
import 'package:resenha/app/modules/events/domain/repositories/events_repository.dart';

abstract class DeleteEvent {
  Future<Either<Failure, void>> call(String id);
}

class DeleteEventImpl extends DeleteEvent {
  final EventsRepository repository;

  DeleteEventImpl(this.repository);

  @override
  Future<Either<Failure, void>> call(String id) async {
    return await repository.remove(id);
  }
}
