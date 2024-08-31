import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:newstore/app/manager/appcontroller_cubit.dart';
import 'package:newstore/core/helper/image_selector.dart';
import 'package:newstore/features/auth/presentation/manager/auth_bloc.dart';

import '../cache/store.dart';

final sl = GetIt.instance;
Future<void> setUpLocatore() async {
  final objectBoxManager = await ObjectBoxManager.create();

  // Register the ObjectBoxManager as a singleton
  sl.registerSingleton<ObjectBoxManager>(objectBoxManager);

  sl.registerSingleton<PickImage>(PickImage());
  sl.registerSingleton<GlobalKey<NavigatorState>>(GlobalKey<NavigatorState>());
  sl.registerFactory<AppControllerCubit>(() => AppControllerCubit());
  sl.registerFactory<AuthBloc>(() => AuthBloc());
}
