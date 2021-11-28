import 'package:contacts_service/contacts_service.dart';

abstract class ContactsDataSource {
  Future<List<dynamic>> get({
    String? query,
    bool withThumbnails = true,
    bool photoHighResolution = true,
    bool orderByGivenName = true,
    bool iOSLocalizedLabels = true,
    bool androidLocalizedLabels = true,
  });
  Future<dynamic> add(Contact contact);
  Future<dynamic> delete(Contact contact);
  Future<dynamic> update(Contact contact);
  Future<dynamic> openContactForm();
  Future<dynamic> openExisting(Contact contact);
}
