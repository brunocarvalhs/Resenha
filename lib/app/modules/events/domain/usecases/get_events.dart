import 'package:dartz/dartz.dart';

import '../../domain/errors/errors.dart';
import '../../domain/repositories/events_repository.dart';
import '../../domain/entities/logged_event_info.dart';

abstract class GetEvents {
  Future<Either<Failure, Iterable<LoggedEventInfo>>> call();
}

class GetEventsImpl extends GetEvents {
  final EventsRepository repository;

  GetEventsImpl(this.repository);

  @override
  Future<Either<Failure, Iterable<LoggedEventInfo>>> call() async {
    return await repository.selectAll();
  }
}
