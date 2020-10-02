import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  //collection refernce
  final CollectionReference mealCollection =
      Firestore.instance.collection("user");
  Future UserData(
    String fullname,
  ) async {
    return await mealCollection.document(uid).setData({"name": fullname});
  }

  Stream<QuerySnapshot> get datainfo {
    return mealCollection.snapshots();
  }
}
