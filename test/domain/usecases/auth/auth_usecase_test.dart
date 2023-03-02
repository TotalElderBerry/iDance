import 'package:flutter_test/flutter_test.dart';
import 'package:idance/domain/repository/auth/auth_repository.dart';
import 'package:idance/domain/usecases/auth/auth_login.dart';
import 'package:mockito/mockito.dart';

import '../../repository/auth/auth_repository_test.dart';


void main(){
  AuthLogin authLoginusecase;
  MockAuthRepository mockAuthRepository;

  setUp((){
    mockAuthRepository = MockAuthRepository();
    authLoginusecase = AuthLogin(mockAuthRepository);
  });
  
  test(
    'should login registered user',
    () async {
      
      
    }
  );
  
}