import 'package:flutter/material.dart';
import 'package:newstore/app/env.varables.dart';

class SnapShope extends StatelessWidget {
  const SnapShope({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVarables.ins.type,
      home: const Scaffold(),
    );
  }
}
