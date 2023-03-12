import 'package:idance/domain/entities/user.dart';
import 'package:idance/domain/repository/auth/auth_repository.dart';

import '../../../data/models/user_auth_model.dart';
import '../../entities/user_params.dart';

class AuthRegister {
  AuthRepository authRepo;

  AuthRegister(this.authRepo);

  Future<UserEntity> execute(UserParams params) async{

    UserData u = await authRepo.register(params);
    return UserEntity.fromFirebaseUser(u);
  }
}