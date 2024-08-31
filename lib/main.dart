import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/app/manager/env.varables.dart';
import 'package:newstore/app/manager/appcontroller_cubit.dart';
import 'package:newstore/app/snap_shope.dart';
import 'package:newstore/core/cache/store.dart';
import 'package:newstore/core/di/locator.dart';
import 'package:newstore/core/func/get_device_identity.dart';
import 'package:newstore/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    setUpLocatore(),
    EnvVarables.ins.init(envType: Env.prod),
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    ScreenUtil.ensureScreenSize(),
  ]);

  final objectBoxManager = sl<ObjectBoxManager>();

  // Save preferences using ObjectBoxManager
  final deviceIdentity = await getDeviceIdentity();
  objectBoxManager.updateIdentity(deviceIdentity);

  log(objectBoxManager.getPreferences().identity.toString());

  log("Device language is ${objectBoxManager.getPreferences().language}");

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(
      BlocProvider(
        create: (context) => sl<AppControllerCubit>()
          ..loadCachedLanguage()
          ..loadCachedTheme(),
        child: const SnapShope(),
      ),
    );
  });
}
