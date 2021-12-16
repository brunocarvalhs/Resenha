import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/entities/logged_event_info.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';
import 'package:resenha/app/modules/events/domain/repositories/events_repository.dart';

abstract class UpdateEvent {
  Future<Either<Failure, void>> call(LoggedEventInfo event);
}

class UpdateEventImpl extends UpdateEvent {
  final EventsRepository repository;

  UpdateEventImpl(this.repository);

  @override
  Future<Either<Failure, void>> call(LoggedEventInfo event) async {
    return await repository.update(event);
  }
}
