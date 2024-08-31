import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newstore/config/router/base_route.dart';
import 'package:newstore/core/di/locator.dart';
import 'package:newstore/features/auth/presentation/manager/auth_bloc.dart';
import 'package:newstore/features/auth/presentation/view/screens/login.dart';
import 'package:newstore/features/auth/presentation/view/screens/sign_up.dart';
import 'package:newstore/features/auth/test.dart';

class AppRoutes {
  static const String homeAdmine = '/homeAdmine';
  static const String home = '/home';
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static const String signUp = '/signUp';
}

class AppRouter {
  static Route<void> onGenerateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    log(args.toString());

    switch (settings.name) {
      case AppRoutes.login:
        return BaseRoute(
            page: BlocProvider(
          create: (context) => sl<AuthBloc>(),
          child: const Login(),
        ));
      case AppRoutes.signUp:
        return BaseRoute(
            page: BlocProvider(
          create: (context) => sl<AuthBloc>(),
          child: const SignUp(),
        ));
      case AppRoutes.dashboard:
        return BaseRoute(page: const Test());
      default:
        return BaseRoute(page: const Scaffold());
    }
  }
}
