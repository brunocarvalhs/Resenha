abstract class DatabaseDataSource {
  Future<dynamic> select(String collectionPath, String? id);
  Future<dynamic> selectAll(String collectionPath);
  Future<dynamic> create(String collectionPath, Map<String, dynamic> data);
  Future<dynamic> update(String collectionPath, Map<String, dynamic> data);
  Future<dynamic> remove(String collectionPath, String id);
}
