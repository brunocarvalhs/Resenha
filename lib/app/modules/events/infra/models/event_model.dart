import 'dart:convert';

import '../../domain/entities/logged_event.dart';
import '../../domain/entities/logged_event_info.dart';

class EventModel extends LoggedEvent implements LoggedEventInfo {
  EventModel({
    required String id,
    required String title,
    required String description,
    required String category,
    required DateTime data,
    required String image,
  }) : super(
          id: id,
          title: title,
          description: description,
          category: category,
          data: data,
          image: image,
        );

  EventModel copyWith({
    String? id,
    String? title,
    String? description,
    String? category,
    DateTime? data,
    String? image,
  }) {
    return EventModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      data: data ?? this.data,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'data': data.millisecondsSinceEpoch,
      'image': image,
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      category: map['category'] as String,
      data: DateTime.fromMillisecondsSinceEpoch(map['data'] as int),
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory EventModel.fromJson(String source) => EventModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
