import 'package:dartz/dartz.dart';
import 'package:google_place/google_place.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';
import 'package:resenha/app/modules/events/domain/repositories/place_maps_repository.dart';
import 'package:resenha/app/modules/events/infra/datasource/place_maps_datasource.dart';

class PlaceMapsRepositoryImpl extends PlaceMapsRepository {
  final PlaceMapsDatasource datasource;
  PlaceMapsRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, AutocompleteResponse?>> autocomplete(String value) async {
    try {
      final result = await datasource.autocomplete(value);
      return Right(result);
    } catch (e) {
      return Left(ErrorPlaceMaps(message: "Error ao tentar procurar endereço"));
    }
  }
}
