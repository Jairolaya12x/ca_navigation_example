import 'package:clean_arch_navigation_example/src/presentation/features/login/login_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  void login(BuildContext context, LoginProvider provider) async {
    final result = await provider.login();
    if(result) {
      Navigator.pushNamed(context, 'pagina_siguiente');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login!'),
          TextField(
            controller: context.read()<LoginProvider>().usernameController,
          ),
          TextField(
            controller: context.read()<LoginProvider>().passwordController,
          ),
          TextButton(
            onPressed: () => login(
              context,
              context.read<LoginProvider>(),
            ),
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
