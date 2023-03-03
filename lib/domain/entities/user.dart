import 'package:firebase_auth/firebase_auth.dart';
import 'package:idance/data/models/user_model.dart';

class UserEntity{
  final String id;
  final String email;

  UserEntity({
    required this.id,
    required this.email,
  });


  factory UserEntity.fromFirebaseUser(UserData user) {
    return UserEntity(
      id: user.user!.uid,
      email: user.user!.email!,
    );
  }
}
