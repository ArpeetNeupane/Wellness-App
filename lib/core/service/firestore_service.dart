import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:developer';
// import '../constants/cloud_firestore_constant.dart';

class FirestoreService {
  // final String _generateUniqueId = Uuid().v4();

  Future<void> insertNewUserData({
    required String email,
    required String name,
    required String uuid,
  }) async {
    try {
      await FirebaseFirestore.instance
          .collection(
            "Users", //can use a separate class for constants
          ) // "users" is your collection (table)
          .doc(uuid) // document ID (row key)
          .set({ //attributes
            'email': email, // fields (columns)
            'name': name, // fields (columns)
            'userRole': 'customer', // fields (columns)
          });
    } catch (e) {
      log("Failed to add new user data [insertNewUserData] : $e");
    }
  }
}