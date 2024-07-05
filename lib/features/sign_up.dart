import 'package:flutter/material.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/config/router/app_routes.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('sign up'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            context.pushNamed(AppRoutes.login);
          },
          child: Text('sign up')),
      ),
    );
  }
}
