import 'package:flutter/material.dart';
import 'package:newstore/core/styles/images/app_images.dart';

class NoNetWork extends StatelessWidget {
  const NoNetWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppLightImages.noInternet,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
