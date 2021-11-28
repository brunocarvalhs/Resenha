import 'dart:convert';

import '../../domain/entities/logged_event.dart';
import '../../domain/entities/logged_event_info.dart';

class EventModel extends LoggedEvent implements LoggedEventInfo {
  const EventModel({
    required String id,
    required String title,
    required String description,
    required String category,
    required DateTime date,
    required String image,
    required bool private,
  }) : super(
          id: id,
          title: title,
          description: description,
          category: category,
          date: date,
          image: image,
          private: private,
        );

  @override
  EventModel copyWith(
      {String? title, String? description, String? category, DateTime? date, String? image, bool? private}) {
    return EventModel(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      date: date ?? this.date,
      image: image ?? this.image,
      private: private ?? this.private,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'date': date.millisecondsSinceEpoch,
      'image': image,
      'private': private
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      category: map['category'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      image: map['image'] as String,
      private: map['private'] as bool,
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory EventModel.fromJson(String source) => EventModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
