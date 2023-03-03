import 'package:firebase_auth/firebase_auth.dart';

class UserData {
  User? _user;

  UserData(this._user);

  User? get user => _user;

  set user(User? value) {
    _user = value;
  }


  factory UserData.fromFirebaseUser(User user) {
    return UserData(
      user
    );
  }
}
