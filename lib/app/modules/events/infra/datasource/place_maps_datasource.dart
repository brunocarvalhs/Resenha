import 'package:google_place/google_place.dart';

abstract class PlaceMapsDatasource {
  Future<AutocompleteResponse?> autocomplete(String value);
}
