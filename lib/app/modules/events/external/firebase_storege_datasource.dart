import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:resenha/app/modules/events/infra/datasource/storage_datasource.dart';

class FirebaseStorageDatasource extends StorageDatasource {
  final firebase_storage.FirebaseStorage firebaseStorage;

  FirebaseStorageDatasource(this.firebaseStorage);

  @override
  Future<firebase_storage.TaskSnapshot> uploadFile(String? ref, File file) async {
    return await firebaseStorage.ref(ref).putFile(file);
  }
}
