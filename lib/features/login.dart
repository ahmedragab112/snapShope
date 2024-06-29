import 'package:flutter/material.dart';
import 'package:newstore/config/extension/extension.dart';
import 'package:newstore/config/router/app_routes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            context.pushNamed(AppRoutes.signUp);
          },
          child: Text("Login")),
      ),
    );
  }
}