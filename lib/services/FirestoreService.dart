import 'package:chatApp/models/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class FirestoreService {
  final CollectionReference userCollectionRef =
      FirebaseFirestore.instance.collection('users');

  Future createuser(UserModel user) async {
    try {
      userCollectionRef.doc(user.id).set(user.toJson());
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      e.toString();
    }
  }
}
