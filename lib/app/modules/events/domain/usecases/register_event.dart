import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/entities/logged_event_info.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';
import 'package:resenha/app/modules/events/domain/repositories/events_repository.dart';

abstract class RegistersEvent {
  Future<Either<Failure, LoggedEventInfo>> call(LoggedEventInfo event);
}

class RegisterEventImpl extends RegistersEvent {
  final EventsRepository repository;

  RegisterEventImpl(this.repository);

  @override
  Future<Either<Failure, LoggedEventInfo>> call(LoggedEventInfo event) async {
    return await repository.create(event);
  }
}
