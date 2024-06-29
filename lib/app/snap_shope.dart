import 'package:flutter/material.dart';
import 'package:newstore/app/contictivity_controller.dart';
import 'package:newstore/app/env.varables.dart';
import 'package:newstore/core/common/screen/no_network_screen.dart';

class SnapShope extends StatelessWidget {
  const SnapShope({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConactivityController.instance.checkInterNet,
      builder: (context, value, child) {
        if (value) {
          return MaterialApp(
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
            home: const Scaffold(),
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
