import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';
import 'package:resenha/app/modules/events/domain/repositories/storage_repository.dart';

abstract class RegisterImage {
  Future<Either<Failure, String>> call(File event);
}

class RegisterImageImpl extends RegisterImage {
  final StorageRepository repository;

  RegisterImageImpl(this.repository);

  @override
  Future<Either<Failure, String>> call(File event) async {
    return await repository.uploadFile(event);
  }
}
