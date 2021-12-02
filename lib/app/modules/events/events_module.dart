import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:location/location.dart';
import 'package:resenha/app/modules/events/domain/usecases/list_contacts.dart';
import 'package:resenha/app/modules/events/external/contacts_datasource.dart';
import 'package:resenha/app/modules/events/infra/repositories/contacts_repository.dart';
import 'package:resenha/app/modules/events/presenter/pages/create/members/members_controller.dart';

import 'package:uuid/uuid.dart';

import 'presenter/pages/list/list_controller.dart';
import 'presenter/pages/list/list_page.dart';
import 'presenter/pages/search/search_page.dart';
import 'presenter/stores/events_store.dart';
import 'domain/usecases/get_events.dart';
import 'domain/usecases/read_event.dart';
import 'domain/usecases/register_event.dart';
import 'external/firebase_store_datasource.dart';
import 'infra/repositories/events_repository.dart';
import 'presenter/pages/create/meeting_point/meeting_point_page.dart';
import 'presenter/pages/create/members/members_page.dart';
import 'presenter/pages/create/register/register_controller.dart';
import 'presenter/pages/search/search_controller.dart';
import 'presenter/stores/categories_store.dart';
import 'presenter/pages/create/meeting_point/meeting_point_controller.dart';
import 'presenter/pages/create/register/register_page.dart';
import 'presenter/pages/visualization/read/read_controller.dart';
import 'presenter/pages/visualization/read/read_page.dart';

class EventsModule extends Module {
  @override
  final List<Bind> binds = [
    // Global -----------------------------------------------------------------------------
    Bind.instance<FirebaseFirestore>(FirebaseFirestore.instance, export: true),
    Bind.instance<Uuid>(const Uuid(), export: true),
    Bind.instance<ContactsService>(ContactsService()),
    Bind.instance<Location>(Location()),
    Bind.lazySingleton((i) => CategoriesStore(), export: true),
    Bind.lazySingleton((i) => EventsStore(), export: true),
    Bind.lazySingleton((i) => FirebaseStoreDatasource(i.get<FirebaseFirestore>())),
    Bind.lazySingleton((i) => EventsRepositoryImpl(i.get<FirebaseStoreDatasource>())),
    // List -------------------------------------------------------------------------------
    Bind.lazySingleton<GetEvents>((i) => GetEventsImpl(i.get<EventsRepositoryImpl>())),
    Bind.lazySingleton((i) => ListController(i.get(), i.get(), i.get())),
    // Read -------------------------------------------------------------------------------
    Bind.lazySingleton<ReadEvent>((i) => ReadEventImpl(i.get<EventsRepositoryImpl>())),
    Bind.lazySingleton((i) => ReadController(i.get(), i.get())),
    // Register ---------------------------------------------------------------------------
    Bind.lazySingleton((i) => RegisterEventImpl(i.get<EventsRepositoryImpl>())),
    Bind.lazySingleton((i) => RegisterController(i.get(), i.get(), i.get(), i.get())),
    // * MeetingPoint
    Bind.lazySingleton((i) => MeetingPointController(i.get(), i.get())),
    // * Members
    Bind.lazySingleton((i) => ContactServiceDatasource(i.get())),
    Bind.lazySingleton((i) => ContactsRepositoryImpl(i.get<ContactServiceDatasource>())),
    Bind.lazySingleton((i) => ListContactsImpl(i.get<ContactsRepositoryImpl>())),
    Bind.lazySingleton((i) => MembersController(i.get(), i.get())),
    // Search -----------------------------------------------------------------------------
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
