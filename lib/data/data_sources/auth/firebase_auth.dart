import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

import '../../models/user_auth_model.dart';

abstract class FireBaseAuthSource {
  Future<UserData> login(String email, String password);
  Future<UserData> register(String email, String password);
  Future<void> logout();

}

class FireBaseAuth extends FireBaseAuthSource {
  final FirebaseAuth _fireBaseAuth;

  FireBaseAuth({FirebaseAuth? firebaseAuth}): _fireBaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  @override
  Future<UserData> login(String email, String password) async {
    // TODO: implement login
    final u = await _fireBaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return UserData.fromFirebaseUser(u.user!);
  }

  @override
  Future<void> logout() async {
    // TODO: implement logout
    await _fireBaseAuth.signOut();
  }

  @override
  Future<UserData> register(String email, String password) async {

    // TODO: implement register
    final u = await _fireBaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return UserData.fromFirebaseUser(u.user!);
  }

}