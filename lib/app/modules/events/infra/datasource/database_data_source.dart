abstract class DatabaseDataSource {
  Future<dynamic> select(String collectionPath, String? path);
  Future<dynamic> create(String collectionPath, String? path, Map<String, dynamic> data);
  Future<dynamic> update(String collectionPath, String? path, Map<String, dynamic> data);
  Future<dynamic> remove(String collectionPath, String path);
}
