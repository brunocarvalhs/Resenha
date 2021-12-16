import 'package:contacts_service/contacts_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';
import 'package:resenha/app/modules/events/domain/repositories/storage_repository.dart';
import 'package:resenha/app/modules/events/domain/usecases/register_image.dart';
import 'package:resenha/app/modules/events/external/firebase_storege_datasource.dart';
import 'package:resenha/app/modules/events/infra/datasource/contacts_datasource.dart';
import 'package:resenha/app/modules/events/infra/datasource/database_datasource.dart';
import 'package:resenha/app/modules/events/infra/datasource/galery_photo_datasource.dart';
import 'package:resenha/app/modules/events/infra/datasource/place_maps_datasource.dart';
import 'package:resenha/app/modules/events/infra/datasource/storage_datasource.dart';
import 'package:resenha/app/modules/events/infra/repositories/events_repository.dart';
import 'package:uuid/uuid.dart';

import 'package:resenha/app/modules/events/domain/repositories/albums_repository.dart';
import 'package:resenha/app/modules/events/domain/repositories/categories_repository.dart';
import 'package:resenha/app/modules/events/domain/repositories/contacts_repository.dart';
import 'package:resenha/app/modules/events/domain/repositories/events_repository.dart';
import 'package:resenha/app/modules/events/domain/repositories/place_maps_repository.dart';
import 'package:resenha/app/modules/events/domain/usecases/delete_event.dart';
import 'package:resenha/app/modules/events/domain/usecases/find_place.dart';
import 'package:resenha/app/modules/events/domain/usecases/list_categories.dart';
import 'package:resenha/app/modules/events/domain/usecases/list_contacts.dart';
import 'package:resenha/app/modules/events/domain/usecases/select_image.dart';
import 'package:resenha/app/modules/events/external/contacts_datasource.dart';
import 'package:resenha/app/modules/events/external/galery_photo_datasource.dart';
import 'package:resenha/app/modules/events/external/place_maps_datasource.dart';
import 'package:resenha/app/modules/events/infra/repositories/albums_repository.dart';
import 'package:resenha/app/modules/events/infra/repositories/categories_repository.dart';
import 'package:resenha/app/modules/events/infra/repositories/contacts_repository.dart';
import 'package:resenha/app/modules/events/infra/repositories/place_maps_repository.dart';
import 'package:resenha/app/modules/events/presenter/pages/create/members/members_controller.dart';
import 'package:resenha/app/modules/events/presenter/stores/register_event_store.dart';

import 'presenter/pages/list/list_controller.dart';
import 'presenter/pages/list/list_page.dart';
import 'presenter/pages/search/search_page.dart';
import 'presenter/stores/events_store.dart';
import 'domain/usecases/get_events.dart';
import 'domain/usecases/read_event.dart';
import 'domain/usecases/register_event.dart';
import 'external/firebase_store_datasource.dart';
import 'infra/repositories/storage_repository.dart';
import 'presenter/pages/create/meeting_point/meeting_point_page.dart';
import 'presenter/pages/create/members/members_page.dart';
import 'presenter/pages/create/register/register_controller.dart';
import 'presenter/pages/search/search_controller.dart';
import 'presenter/pages/create/meeting_point/meeting_point_controller.dart';
import 'presenter/pages/create/register/register_page.dart';
import 'presenter/pages/visualization/read/read_controller.dart';
import 'presenter/pages/visualization/read/read_page.dart';

class EventsModule extends Module {
  @override
  final List<Bind> binds = [
    // Dependencies -----------------------------------------------------------------------------
    Bind.instance<Uuid>(const Uuid(), export: true),
    Bind.instance<ContactsService>(ContactsService()),
    Bind.instance<Location>(Location()),
    Bind.instance<ImagePicker>(ImagePicker()),
    // Stores -----------------------------------------------------------------------------------
    Bind.lazySingleton((i) => EventsStore(), export: true),
    Bind.lazySingleton((i) => RegisterEventStore(i.get(), i.get(), i.get())),
    // Datasource -------------------------------------------------------------------------------
    Bind.lazySingleton<DatabaseDataSource>((i) => FirebaseStoreDatasource(i.get())),
    Bind.lazySingleton<GaleryPhotoDatasource>((i) => GaleryPhotoDatasourceImpl(i.get())),
    Bind.lazySingleton<PlaceMapsDatasource>((i) => PlaceMapsDatasourceImpl(i.get())),
    Bind.lazySingleton<ContactsDataSource>((i) => ContactServiceDatasource(i.get())),
    Bind.lazySingleton<StorageDatasource>((i) => FirebaseStorageDatasource(i.get())),
    // Repositories -----------------------------------------------------------------------------
    Bind.lazySingleton<EventsRepository>((i) => EventsRepositoryImpl(i.get(), i.get())),
    Bind.lazySingleton<CategoriesRepository>((i) => CategoriesRepositoryImpl(i.get())),
    Bind.lazySingleton<PlaceMapsRepository>((i) => PlaceMapsRepositoryImpl(i.get())),
    Bind.lazySingleton<ContactsRepository>((i) => ContactsRepositoryImpl(i.get())),
    Bind.lazySingleton<AlbumsRepository>((i) => AlbumsRepositoryImpl(i.get())),
    Bind.lazySingleton<StorageRepository>((i) => StorageRepositoryImpl(i.get(), i.get())),
    // Use Case ---------------------------------------------------------------------------------
    Bind.lazySingleton<ReadEvent>((i) => ReadEventImpl(i.get())),
    Bind.lazySingleton((i) => DeleteEventImpl(i.get())),
    Bind.lazySingleton<SelectImage>((i) => SelectImageImpl(i.get())),
    Bind.lazySingleton<GetEvents>((i) => GetEventsImpl(i.get())),
    Bind.lazySingleton((i) => RegisterEventImpl(i.get())),
    Bind.lazySingleton<ListCategories>((i) => ListCategoriesImpl(i.get())),
    Bind.lazySingleton<FindPlace>((i) => FindPlaceImpl(i.get())),
    Bind.lazySingleton((i) => ListContactsImpl(i.get())),
    Bind.lazySingleton((i) => RegisterImageImpl(i.get())),
    // Controllers -------------------------------------------------------------------------------
    Bind.lazySingleton((i) => ListController(i.get(), i.get(), i.get())),
    Bind.lazySingleton((i) => ReadController(i.get(), i.get())),
    Bind.lazySingleton((i) => RegisterController(i.get(), i.get(), i.get())),
    Bind.lazySingleton((i) => MeetingPointController(i.get(), i.get(), i.get())),
    Bind.lazySingleton((i) => MembersController(i.get(), i.get())),
    Bind.lazySingleton((i) => SearchController(i.get()))
  ];

  @override
  final List<ModularRoute> routes = [
    // List
    ChildRoute(Modular.initialRoute, child: (_, args) => const ListPage()),
    ChildRoute("/search", child: (_, args) => const SearchPage()),
    // Visualization
    ChildRoute("/read/:id", child: (_, args) => const ReadPage()),
    //Create
    ChildRoute("/register", child: (_, args) => const RegisterPage()),
    ChildRoute("/register/maps", child: (_, args) => const MeetingPointPage()),
    ChildRoute("/register/members", child: (_, args) => const MembersPage()),
  ];
}
