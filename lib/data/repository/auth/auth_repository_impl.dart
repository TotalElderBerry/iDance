import 'package:firebase_auth/firebase_auth.dart';
import 'package:idance/data/data_sources/auth/firebase_auth.dart';
import 'package:idance/data/models/user_model.dart';
import 'package:idance/domain/repository/auth/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository{

  final FireBaseAuth _fireBaseAuth;

  AuthRepositoryImpl(this._fireBaseAuth);


  @override
  Future<UserData> login(String email, String password) async {
    // TODO: implement login
    UserData ?user = await _fireBaseAuth.login(email, password);
    return user;
  }

  @override
  Future<void> logout() async {
    // TODO: implement logout
    await _fireBaseAuth.logout();
  }

  @override
  Future<UserData> register(String email, String password) async {
    // TODO: implement register
    UserData ?user = await _fireBaseAuth.register(email, password);
    return user;
  }
  
  @override
  Future<void> changePassword() {
    // TODO: implement changePassword
    throw UnimplementedError();
  }
  
  @override
  Future<UserData> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

}