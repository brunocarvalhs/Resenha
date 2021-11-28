abstract class LoggedCategoryInfo {
  String? get id;
  String? get name;
  String? get image;
  Map<String, dynamic> toMap();
  String toJson();
  LoggedCategoryInfo copyWith({
    String? id,
    String? name,
    String? image,
  });
}
