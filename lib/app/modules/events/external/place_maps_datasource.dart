import 'package:google_place/google_place.dart';
import 'package:resenha/app/modules/events/infra/datasource/place_maps_datasource.dart';

class PlaceMapsDatasourceImpl implements PlaceMapsDatasource {
  final GooglePlace googlePlace;

  PlaceMapsDatasourceImpl(this.googlePlace);

  @override
  Future<AutocompleteResponse?> autocomplete(String value) async {
    return await googlePlace.autocomplete.get(value);
  }
}
