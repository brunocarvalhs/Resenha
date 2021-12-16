import 'package:dartz/dartz.dart';
import 'package:google_place/google_place.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';

abstract class PlaceMapsRepository {
  Future<Either<Failure, AutocompleteResponse?>> autocomplete(String value);
}
