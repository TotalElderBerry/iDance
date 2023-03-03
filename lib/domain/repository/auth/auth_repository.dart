import 'package:idance/data/models/user_model.dart';

abstract class AuthRepository{
  Future<UserData> login(String email, String password);
  Future<UserData> register(String email, String password);
  Future<void> logout();
  Future<UserData> getCurrentUser();
  Future<void> changePassword();
  
}