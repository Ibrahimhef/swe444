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

  Future insertMeals(int category, String title, String ingredients,
      String step, int duration, String email, String imageURL) async {
    return await mealCollection.document(uid).setData({
      "category": category,
      'title': title,
      'ingredients': ingredients,
      'steps': step,
      'duration': duration,
      'email': email,
      'imageURL': imageURL
    });
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
