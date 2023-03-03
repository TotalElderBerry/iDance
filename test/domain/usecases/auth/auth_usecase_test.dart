  import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
  import 'package:flutter_test/flutter_test.dart';

  import 'package:idance/data/data_sources/auth/firebase_auth.dart';
  import 'package:idance/data/models/user_model.dart';
  import 'package:idance/domain/entities/user.dart';
  import 'package:idance/domain/repository/auth/auth_repository.dart';
  import 'package:idance/domain/usecases/auth/auth_login.dart';
  import 'package:idance/domain/usecases/auth/auth_register.dart';
  import 'package:mockito/mockito.dart';
  import 'package:mockito/annotations.dart';

  import 'auth_usecase_test.mocks.dart';


  @GenerateMocks([AuthRepository, UserData, User])
  void main() async {
    late AuthLogin authLoginusecase;
    late AuthRegister authRegisterusecase;
    late MockAuthRepository mockAuthRepository;
  
    setUpAll(()async{
        // TestWidgetsFlutterBinding.ensureInitialized();
        // await Firebase.initializeApp(
        //   // name:'iDance',
        //   // options: DefaultFirebaseOptions.currentPlatform
        // );
      mockAuthRepository = MockAuthRepository();
      authLoginusecase = AuthLogin(mockAuthRepository);
      authRegisterusecase = AuthRegister(mockAuthRepository);
    });

  
    
    test(
      'should login registered user',
      () async {
        const email = 'test@test.com';
        const password = "test12345";
        final u = UserEntity(id: '123', email: email);
       

       //act


       //assert
      }
    );

    // test(
    //   'should register a user',
    //   () async {
    //     const email = 'register@test.com';
    //     const password = 'register12345';
    //     final user = UserData();
    //     when(mockAuthRepository.register(email,password)).thenAnswer((_) async {
    //       return user;
    //     });


    //     //act
    //     final result = await authRegisterusecase.execute(email, password);

    //     //assert
    //     // expect(result,user);
    //     verify(mockAuthRepository.register(email, password));
    //   }
    // );
    
  }