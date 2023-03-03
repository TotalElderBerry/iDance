import '../../repository/auth/auth_repository.dart';

class AuthLogout {
  AuthRepository authRepo;
  
  AuthLogout(this.authRepo);

  Future<void> execute()async{
    await authRepo.logout();
  }
}