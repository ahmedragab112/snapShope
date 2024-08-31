import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:newstore/core/helper/image_selector.dart';
import 'package:newstore/features/auth/presentation/manager/auth_bloc.dart';

import '../cache/prefrence_repo.dart';
import '../cache/store.dart';

final locator = GetIt.instance;

Future<void> setUpLocatore() async {
  final objectBoxManager = await ObjectBoxManager.create();
  locator.registerSingleton<PreferencesRepository>(
      PreferencesRepository(objectBoxManager.preferencesBox));

  locator.registerSingleton<PickImage>(PickImage());
  locator.registerSingleton<GlobalKey<NavigatorState>>(
      GlobalKey<NavigatorState>());

  locator.registerFactory<AuthBloc>(() => AuthBloc());
}
