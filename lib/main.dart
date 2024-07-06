import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/app/env.varables.dart';
import 'package:newstore/app/manager/appcontroller_cubit.dart';
import 'package:newstore/app/snap_shope.dart';
import 'package:newstore/core/di/locator.dart';
import 'package:newstore/firebase_options.dart';

import 'core/cache/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    setUpLocatore(),
    locator<CacheHelper>().init(),
    EnvVarables.ins.init(envType: Env.prod),
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    ScreenUtil.ensureScreenSize(),
  ]);

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(
      BlocProvider(
        create: (context) => AppControllerCubit(),
        child: const SnapShope(),
      ),
    );
  });
}
