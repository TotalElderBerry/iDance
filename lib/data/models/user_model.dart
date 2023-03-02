import 'package:firebase_auth/firebase_auth.dart';

class UserData {
  final String id;
  final String email;

  UserData({
    required this.id,
    required this.email,
  });

  factory UserData.fromFirebaseUser(User user) {
    return UserData(
      id: user.uid,
      email: user.email!,
    );
  }
}
