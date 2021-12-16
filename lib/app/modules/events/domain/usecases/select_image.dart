import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';
import 'package:resenha/app/modules/events/domain/repositories/albums_repository.dart';

abstract class SelectImage {
  Future<Either<Failure, File?>> call();
}

class SelectImageImpl extends SelectImage {
  final AlbumsRepository repository;

  SelectImageImpl(this.repository);

  @override
  Future<Either<Failure, File?>> call() async {
    return await repository.album();
  }
}
