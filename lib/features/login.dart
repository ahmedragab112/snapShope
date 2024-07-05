import 'package:flutter/material.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/config/router/app_routes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('login'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(context.getImageTheme.testImage ?? ''),
          Center(
            child: GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoutes.signUp);
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: context.getColorTheme.mainColor),
                )),
          ),
        ],
      ),
    );
  }
}
