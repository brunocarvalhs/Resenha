import 'dart:convert';

class EventModel {
  final String? name;
  final String? photo;
  final String? description;
  final String? point;
  final int? day;
  final int? month;
  final int? hour;
  final int? minutes;
  final String? category;
  final int? members;

  EventModel({
    this.name,
    this.photo,
    this.description,
    this.point,
    this.day,
    this.month,
    this.hour,
    this.minutes,
    this.category,
    this.members,
  });

  EventModel copyWith({
    String? name,
    String? photo,
    String? description,
    String? point,
    int? day,
    int? month,
    int? hour,
    int? minutes,
    String? category,
    int? members,
  }) {
    return EventModel(
      name: name ?? this.name,
      photo: photo ?? this.photo,
      description: description ?? this.description,
      point: point ?? this.point,
      day: day ?? this.day,
      month: month ?? this.month,
      hour: hour ?? this.hour,
      minutes: minutes ?? this.minutes,
      category: category ?? this.category,
      members: members ?? this.members,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'photo': photo,
      'description': description,
      'point': point,
      'day': day,
      'month': month,
      'hour': hour,
      'minutes': minutes,
      'category': category,
      'members': members,
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      name: map['name'],
      photo: map['photo'],
      description: map['description'],
      point: map['point'],
      day: map['day'],
      month: map['month'],
      hour: map['hour'],
      minutes: map['minutes'],
      category: map['category'],
      members: map['members'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EventModel.fromJson(String source) =>
      EventModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EventModel(name: $name, photo: $photo, description: $description, point: $point, day: $day, month: $month, hour: $hour, minutes: $minutes, category: $category, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EventModel &&
        other.name == name &&
        other.photo == photo &&
        other.description == description &&
        other.point == point &&
        other.day == day &&
        other.month == month &&
        other.hour == hour &&
        other.minutes == minutes &&
        other.category == category &&
        other.members == members;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        photo.hashCode ^
        description.hashCode ^
        point.hashCode ^
        day.hashCode ^
        month.hashCode ^
        hour.hashCode ^
        minutes.hashCode ^
        category.hashCode ^
        members.hashCode;
  }
}
