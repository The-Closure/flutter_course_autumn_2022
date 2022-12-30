import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class StorageService {
  Future<void> saveFile(File file) async {
    final storageRef = FirebaseStorage.instance.ref();
    final mountainsRef = storageRef.child("test.jpg");
    await mountainsRef.putFile(file);
  }
}
