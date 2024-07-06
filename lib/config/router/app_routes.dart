import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:newstore/config/router/base_route.dart';
import 'package:newstore/features/login.dart';
import 'package:newstore/features/sign_up.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signUp = '/signUp';
}

class AppRouter {
  static Route<void> onGenerateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    log(args.toString());   

    switch (settings.name) {
      case AppRoutes.login:
        return BaseRoute(page: const Login());
      case AppRoutes.signUp:
        return BaseRoute(page: const SignUp());
      default:
        return BaseRoute(page: const Scaffold());
    }
  }
}
