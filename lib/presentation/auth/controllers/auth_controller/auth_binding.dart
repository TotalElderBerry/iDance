import 'package:get/instance_manager.dart';
import 'package:idance/domain/usecases/auth/auth_login.dart';

import '../../../../data/repository/auth/auth_repository_impl.dart';
import 'auth_controller.dart';

class AuthBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AuthLogin(Get.find<AuthRepositoryImpl>()));
    Get.put(AuthController(Get.find()));
  }

}