import '../models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User _userFormFireBaseUser(FirebaseUser user) {
    return user != null
        ? User(
            uid: user.uid,
          )
        : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged
        // .map((FirebaseUser user) => _userFormFireBaseUser(user));
        .map(_userFormFireBaseUser);
  }

  //sign in anon
  Future SignInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFormFireBaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future SingInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return _userFormFireBaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future RegisterWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return _userFormFireBaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future SignOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
