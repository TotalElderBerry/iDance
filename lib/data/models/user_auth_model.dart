import 'package:firebase_auth/firebase_auth.dart';

class UserData {
  User? user;

  UserData({this.user});

  User? get _user => user;

  set _user(User? value) {
    user = value;
  }


  factory UserData.fromFirebaseUser(User user) {
    return UserData(
      user: user,
    );
  }
}
