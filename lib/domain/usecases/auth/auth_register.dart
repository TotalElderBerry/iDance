import 'package:idance/domain/entities/user.dart';
import 'package:idance/domain/repository/auth/auth_repository.dart';

import '../../../data/models/user_model.dart';

class AuthRegister {
  AuthRepository authRepo;

  AuthRegister(this.authRepo);

  Future<UserEntity> execute(String email, String password) async{
    UserData u = await authRepo.register(email,password);
    return UserEntity.fromFirebaseUser(u);
  }
}