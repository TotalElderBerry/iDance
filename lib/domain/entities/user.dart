import 'package:firebase_auth/firebase_auth.dart';
import 'package:idance/data/models/user_auth_model.dart';

class UserEntity{
  final String id;
  final String email;
  // final String firstName;
  // final String lastName;
  // final String gender;
  // final int contactNumber;
  

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
