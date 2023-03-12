import 'package:firebase_auth/firebase_auth.dart';
import 'package:idance/data/data_sources/auth/firebase_auth.dart';
import 'package:idance/data/models/user_auth_model.dart';
import 'package:idance/domain/entities/user_params.dart';
import 'package:idance/domain/repository/auth/auth_repository.dart';

import '../../data_sources/user/user_datasource.dart';

class AuthRepositoryImpl implements AuthRepository{

  final FireBaseAuth _fireBaseAuth;
  final UserSource _userSource;

  AuthRepositoryImpl(this._fireBaseAuth, this._userSource);


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
  Future<UserData> register(UserParams params) async {
    // TODO: implement register
    UserData ?user = await _fireBaseAuth.register(params.email, params.password);
    String? data = user.user?.uid;
    if(data != null){
      _userSource.addUser(data, params);
    }

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