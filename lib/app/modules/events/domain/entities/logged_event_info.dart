abstract class LoggedEventInfo {
  String? get id;
  String? get title;
  String? get description;
  String? get category;
  DateTime? get date;
  String? get image;
  Map<String, dynamic> toMap();
  String toJson();
  LoggedEventInfo copyWith({
    String? id,
    String? title,
    String? description,
    String? category,
    DateTime? date,
    String? image,
  });
}
