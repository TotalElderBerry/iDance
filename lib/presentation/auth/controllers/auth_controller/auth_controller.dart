import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../domain/usecases/auth/auth_login.dart';

class AuthController extends GetxController {
  final AuthLogin _authLogin;

  AuthController(this._authLogin);

  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> login() async {
    final name = _nameController.text;
    final password = _passwordController.text;
    final user = await _authLogin.execute(name, password);
    if (user == null) {
      // Display error message
    } else {
      // Navigate to next screen
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
