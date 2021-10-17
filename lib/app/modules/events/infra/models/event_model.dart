import '../../domain/entities/logged_event.dart';
import '../../domain/entities/logged_event_info.dart';

class EventModel extends LoggedEvent implements LoggedEventInfo {
  final String id;
  final String title;
  final String description;
  final String category;
  final DateTime data;
  final String image;

  EventModel(
    this.id,
    this.title,
    this.description,
    this.category,
    this.data,
    this.image,
  ) : super(
          id: id,
          title: title,
          description: description,
          category: category,
          data: data,
          image: image,
        );
}
