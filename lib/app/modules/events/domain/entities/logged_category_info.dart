abstract class LoggedCategoryInfo {
  String? get id;
  String? get name;

  Map<String, dynamic> toMap();
  String toJson();
}
