import 'package:dartz/dartz.dart';

import '../../domain/errors/errors.dart';
import '../../domain/repositories/events_repository.dart';
import '../../domain/entities/logged_event_info.dart';

abstract class ReadEvent {
  Future<Either<Failure, LoggedEventInfo>> call(String id);
}

class ReadEventImpl extends ReadEvent {
  final EventsRepository repository;

  ReadEventImpl(this.repository);

  @override
  Future<Either<Failure, LoggedEventInfo>> call(String id) async {
    return await repository.select(id);
  }
}
