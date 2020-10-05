import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:swe444/models/profile.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  final CollectionReference userCollection =
      Firestore.instance.collection("user");
  final CollectionReference mealCollection =
      Firestore.instance.collection("meals");
  Future insertUser(String full_name, String email, String password) async {
    return await userCollection
        .document(uid)
        .setData({'name': full_name, "email": email, "password": password});
  }

  List<profile> _userListFromSnapShot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return profile(
          name: doc.data['name'] ?? '',
          email: doc.data['email'] ?? '',
          password: doc.data['password'] ?? '');
    }).toList();
  }

  Stream<List<profile>> get users {
    return userCollection.snapshots().map(_userListFromSnapShot);
  }
}
