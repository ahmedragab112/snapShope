import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:newstore/core/cache/cache_helper.dart';
import 'package:newstore/features/auth/presentation/manager/auth_bloc.dart';

final locator = GetIt.instance;

Future<void> setUpLocatore() async {
  locator.registerSingleton<CacheHelper>(CacheHelper());
  locator.registerSingleton<GlobalKey<NavigatorState>>(
      GlobalKey<NavigatorState>());

  locator.registerFactory<AuthBloc>(() => AuthBloc());
}
