import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resenha/app/modules/events/infra/datasource/database_datasource.dart';

class FirebaseStoreDatasource implements DatabaseDataSource {
  final FirebaseFirestore firebaseFirestore;

  FirebaseStoreDatasource(this.firebaseFirestore);

  @override
  Future<void> create(String collectionPath, Map<String, dynamic> data) async {
    return await firebaseFirestore.collection(collectionPath).doc(data["id"].toString()).set(data);
  }

  @override
  Future<void> remove(String collectionPath, String id) async {
    return await firebaseFirestore.collection(collectionPath).doc(id).delete();
  }

  @override
  Future<DocumentSnapshot<Map<String, dynamic>>> select(String collectionPath, String? id) async {
    return firebaseFirestore.collection(collectionPath).doc(id).get();
  }

  @override
  Future<void> update(String collectionPath, Map<String, dynamic> data) async {
    return await firebaseFirestore.collection(collectionPath).doc(data["id"].toString()).update(data);
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> selectAll(String collectionPath) async {
    return await firebaseFirestore.collection(collectionPath).get();
  }
}
