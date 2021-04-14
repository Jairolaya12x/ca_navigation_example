import 'package:clean_arch_navigation_example/src/domain/usecases/auth_login.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  LoginProvider(this.authLogin);

  final AuthLogin authLogin;

  String error;

  TextEditingController usernameController;
  TextEditingController passwordController;

  Future<bool> login() async {
    bool result = await authLogin(usernameController.text, usernameController.text);
    if(result) {
      //Pensaba aca usar un context que viniera desde el navigator key pero estaría mal según entiendo
      //Navigator.pushNamed(context, 'routeName');
    }
    else {
      error = 'Algo salio mal';
    }
    notifyListeners();
    return result;
  }
}
