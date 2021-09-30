import 'package:resenha/app/modules/login/domain/entities/logged_user.dart';

import '../../domain/entities/logged_event.dart';
import '../../domain/entities/logged_event_info.dart';

class EventModel extends LoggedEvent implements LoggedEventInfo {
  final String id;
  final String title;
  final String description;
  final String category;
  final DateTime data;
  final String image;
  final List<LoggedUser> users;

  EventModel(
    this.id,
    this.title,
    this.description,
    this.category,
    this.data,
    this.image,
    this.users,
  ) : super(
          id: id,
          title: title,
          description: description,
          category: category,
          data: data,
          image: image,
          users: users,
        );
}
