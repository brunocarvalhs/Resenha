import 'package:contacts_service/contacts_service.dart';
import 'package:resenha/app/modules/events/infra/datasource/contacts_data_source.dart';

class ContactServiceDatasource implements ContactsDataSource {
  final ContactsService contactsService;

  ContactServiceDatasource(this.contactsService);

  @override
  Future<void> add(contact) async {
    return await ContactsService.addContact(contact);
  }

  @override
  Future<void> delete(contact) async {
    return await ContactsService.deleteContact(contact);
  }

  @override
  Future<List<Contact>> get({
    String? query,
    bool withThumbnails = true,
    bool photoHighResolution = true,
    bool orderByGivenName = true,
    bool iOSLocalizedLabels = true,
    bool androidLocalizedLabels = true,
  }) async {
    return await ContactsService.getContacts(
      query: query,
      withThumbnails: withThumbnails,
      photoHighResolution: photoHighResolution,
      orderByGivenName: orderByGivenName,
      iOSLocalizedLabels: iOSLocalizedLabels,
      androidLocalizedLabels: androidLocalizedLabels,
    );
  }

  @override
  Future<void> openContactForm() async {
    await ContactsService.openContactForm();
  }

  @override
  Future<Contact> openExisting(contact) async {
    return await ContactsService.openExistingContact(contact);
  }

  @override
  Future<void> update(contact) async {
    return await ContactsService.updateContact(contact);
  }
}
