  import 'package:firebase_auth/firebase_auth.dart';
  import 'package:flutter_test/flutter_test.dart';

  import 'package:idance/data/models/user_auth_model.dart';
  import 'package:idance/domain/entities/user_params.dart';
  import 'package:idance/domain/repository/auth/auth_repository.dart';
  import 'package:idance/domain/usecases/auth/auth_login.dart';
  import 'package:idance/domain/usecases/auth/auth_logout.dart';
  import 'package:idance/domain/usecases/auth/auth_register.dart';
  import 'package:mockito/mockito.dart';
  import 'package:mockito/annotations.dart';

  import 'auth_usecase_test.mocks.dart';


  @GenerateMocks([AuthRepository, UserData, User])
  void main() async {
    late AuthLogin authLoginusecase;
    late AuthRegister authRegisterusecase;
    late MockAuthRepository mockAuthRepository;
    late MockUserData mockUserData;
    late AuthLogout authLogoutusecase;
    setUpAll(()async{
      mockAuthRepository = MockAuthRepository();
      authLoginusecase = AuthLogin(mockAuthRepository);
      authRegisterusecase = AuthRegister(mockAuthRepository);
      authLogoutusecase = AuthLogout(mockAuthRepository);
      mockUserData = MockUserData();
    });

    test(
      'should login registered user',
      () async {
        const email = 'test@test.com';
        const password = "test12345";
        final userModel = MockUser();
        when(mockAuthRepository.login(email, password)).thenAnswer((realInvocation) async {
          return mockUserData;
        });

        when(mockUserData.user).thenReturn(userModel);
        when(userModel.uid).thenReturn('123');
        when(userModel.email).thenReturn('test@test.com');
       //act
        final result = await authLoginusecase.execute(email, password);

       //assert

        expect(result!.id, userModel.uid);
        expect(result.email, userModel.email);
        verify(mockAuthRepository.login(email, password));
      }
    );

    test(
      'should register a user',
      () async {
        UserParams user = UserParams("test", "test", "test", "t", 111, "as", ["null"]);
        final userModel = MockUser();

        when(mockAuthRepository.register(user)).thenAnswer((realInvocation)async {
          return mockUserData;
        });
        when(mockUserData.user).thenReturn(userModel);
        when(userModel.uid).thenReturn('123');
        when(userModel.email).thenReturn(user.email);
        //act
        final result = await authRegisterusecase.execute(user);

        //assert
        expect(result.id, userModel.uid);
        expect(result.email, userModel.email);
        verify(mockAuthRepository.register(user));
      }
    );
    
    test('should logout a user', () async {

      when(mockAuthRepository.logout()).thenAnswer((realInvocation) async {});
      //act
      await authLogoutusecase.execute();
      //assert
      verify(authLogoutusecase.execute()).called(1);
    });
  }