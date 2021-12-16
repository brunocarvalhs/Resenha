import 'package:resenha/app/modules/events/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';

import 'package:resenha/app/modules/events/domain/repositories/albums_repository.dart';
import 'package:resenha/app/modules/events/infra/datasource/galery_photo_datasource.dart';

class AlbumsRepositoryImpl extends AlbumsRepository {
  final GaleryPhotoDatasource datasource;

  AlbumsRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, File?>> album() async {
    try {
      final file = await datasource.album();
      return Right(file);
    } catch (e) {
      return Left(ErrorImageAlbum(message: "Error ao carregar imagem do album"));
    }
  }
}
