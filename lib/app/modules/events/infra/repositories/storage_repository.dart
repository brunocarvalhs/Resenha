import 'dart:io';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/repositories/storage_repository.dart';
import 'package:resenha/app/modules/events/infra/datasource/storage_datasource.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart';

class StorageRepositoryImpl extends StorageRepository {
  final StorageDatasource datasource;
  final String collection = "events";
  final AuthStore authStore;

  StorageRepositoryImpl(this.datasource, this.authStore);

  @override
  Future<Either<Failure, String>> uploadFile(File file) async {
    try {
      final result = await datasource.uploadFile("$collection/${authStore.user!.id}/${basename(file.path)}", file)
          as firebase_storage.TaskSnapshot;
      final uri = await result.ref.getDownloadURL();
      return Right(uri);
    } catch (e) {
      return Left(ErrorCreate(message: "Error ao tentar criar evento"));
    }
  }
}
