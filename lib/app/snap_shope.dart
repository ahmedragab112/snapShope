import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/app/contictivity_controller.dart';
import 'package:newstore/app/env.varables.dart';
import 'package:newstore/config/router/app_routes.dart';
import 'package:newstore/core/common/screen/no_network_screen.dart';
import 'package:newstore/core/styles/fonts/font_family_helper.dart';
import 'package:newstore/core/styles/fonts/font_weight_helper.dart';

class SnapShope extends StatelessWidget {
  const SnapShope({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConactivityController.instance.checkInterNet,
      builder: (context, value, child) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: EnvVarables.ins.type,
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConactivityController.instance.init();
                      return widget!;
                    },
                  ),
                );
              },
              initialRoute: AppRoutes.login,
              onGenerateRoute: AppRouter.onGenerateRoutes,
            ),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVarables.ins.type,
            home: const NoNetWork(),
          );
        }
      },
    );
  }
}
