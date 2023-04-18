import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  final CollectionReference userCollection =
  FirebaseFirestore.instance.collection('users');

  Future updateUserData(String email, String password) async {
    return await userCollection.doc(uid).set({
      'email': email,
      'password': password,
    });
  }

  // get user data stream
  Stream<DocumentSnapshot> get userData {
    return userCollection.doc(uid).snapshots();
  }
}