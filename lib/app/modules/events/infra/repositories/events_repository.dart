import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';
import 'package:resenha/app/modules/events/domain/entities/logged_event_info.dart';
import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/repositories/events_repository.dart';
import 'package:resenha/app/modules/events/infra/datasource/database_datasource.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';

class EventsRepositoryImpl extends EventsRepository {
  final DatabaseDataSource datasource;
  final String collection = "events";
  final AuthStore authStore;

  EventsRepositoryImpl(this.datasource, this.authStore);

  @override
  Future<Either<Failure, LoggedEventInfo>> create(LoggedEventInfo event) async {
    try {
      await datasource.create("users/${authStore.user!.id}/$collection", event.toMap());
      return Right(event);
    } catch (e) {
      return Left(ErrorCreate(message: "Error ao tentar criar evento"));
    }
  }

  @override
  Future<Either<Failure, Unit>> remove(String id) async {
    try {
      await datasource.remove("users/${authStore.user!.id}/$collection", id);
      return const Right(unit);
    } catch (e) {
      return Left(ErrorRemove(message: "Error ao tentar criar evento"));
    }
  }

  @override
  Future<Either<Failure, LoggedEventInfo>> select(String id) async {
    try {
      var map = await datasource.select("users/${authStore.user!.id}/$collection", id)
          as DocumentSnapshot<Map<String, dynamic>>;
      var event = EventModel.fromMap(map.data()!);
      return Right(event);
    } catch (e) {
      return Left(ErrorSelect(message: "Error ao tentar selecionar evento"));
    }
  }

  @override
  Future<Either<Failure, Iterable<LoggedEventInfo>>> selectAll() async {
    try {
      var list =
          await datasource.selectAll("users/${authStore.user!.id}/$collection") as QuerySnapshot<Map<String, dynamic>>;
      var events = list.docs.map((element) => EventModel.fromMap(element.data()));
      return Right(events);
    } catch (e) {
      log(e.toString());
      return Left(ErrorSelect(message: "Error ao tentar selecionar evento"));
    }
  }

  @override
  Future<Either<Failure, LoggedEventInfo>> update(LoggedEventInfo event) async {
    try {
      await datasource.update("users/${authStore.user!.id}/$collection", event.toMap());
      return Right(event);
    } catch (e) {
      return Left(ErrorSelect(message: "Error ao tentar selecionar evento"));
    }
  }
}
