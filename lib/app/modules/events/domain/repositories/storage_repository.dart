import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';

abstract class StorageRepository {
  Future<Either<Failure, String>> uploadFile(File event);
}
