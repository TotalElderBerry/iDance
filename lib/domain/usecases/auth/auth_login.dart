import 'package:idance/data/models/user_model.dart';
import 'package:idance/domain/entities/user.dart';
import 'package:idance/domain/repository/auth/auth_repository.dart';

import 'package:firebase_auth/firebase_auth.dart';

class AuthLogin {
  AuthRepository authRepo;
  
  AuthLogin(this.authRepo);

  Future<UserEntity?> execute(String name, String password) async {
    UserData result = await authRepo.login(name, password);
    print("as");
    
    return UserEntity.fromFirebaseUser(result);
  }
}