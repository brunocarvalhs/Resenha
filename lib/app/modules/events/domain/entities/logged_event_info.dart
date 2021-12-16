abstract class LoggedEventInfo {
  String get id;
  String? get title;
  String? get description;
  String? get category;
  DateTime? get date;
  String? get image;
  bool? get private;
  bool? get invite;
  List<dynamic> get members;
  double? get latitude;
  double? get longitude;

  Map<String, dynamic> toMap();
  String toJson();
  LoggedEventInfo copyWith({
    String? title,
    String? description,
    String? category,
    DateTime? date,
    String? image,
    bool? private,
    bool? invite,
    double? latitude,
    double? longitude,
  });
}
