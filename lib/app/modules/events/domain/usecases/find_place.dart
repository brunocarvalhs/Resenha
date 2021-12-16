import 'package:dartz/dartz.dart';
import 'package:google_place/google_place.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';
import 'package:resenha/app/modules/events/domain/repositories/place_maps_repository.dart';

abstract class FindPlace {
  Future<Either<Failure, AutocompleteResponse?>> call(String address);
}

class FindPlaceImpl extends FindPlace {
  final PlaceMapsRepository repository;

  FindPlaceImpl(this.repository);

  @override
  Future<Either<Failure, AutocompleteResponse?>> call(String address) async {
    return await repository.autocomplete(address);
  }
}
