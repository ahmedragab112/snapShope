import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/core/styles/images/app_images.dart';

class SignupImage extends StatelessWidget {
  const SignupImage({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: CircleAvatar(
        maxRadius: 50.r,
        minRadius: 20.r,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipOval(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Image.asset(
                  AppLightImages.userAvatar,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 35.h,
            ),
          ],
        ),
      ),
    );
  }
}
