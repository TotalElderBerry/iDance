import 'package:idance/data/models/user_auth_model.dart';

import '../../entities/user_params.dart';

abstract class AuthRepository{
  Future<UserData> login(String email, String password);
  Future<UserData> register(UserParams params);
  Future<void> logout();
  Future<UserData> getCurrentUser();
  Future<void> changePassword();
  
}