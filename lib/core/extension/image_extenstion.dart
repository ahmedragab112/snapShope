
import 'package:flutter/material.dart';
import 'package:newstore/core/styles/colors/dartk_color.dart';
import 'package:newstore/core/styles/colors/light_color.dart';
import 'package:newstore/core/styles/images/app_images.dart';

class MyImages extends ThemeExtension<MyImages> {
  const MyImages({
    required this.testImage,

  });

  final String? testImage;

  @override
  ThemeExtension<MyImages> copyWith({
    Color? mainColor,

  }) {
    return MyImages(
      testImage: testImage,

    );
  }

  @override
  ThemeExtension<MyImages> lerp(
    covariant ThemeExtension<MyImages>? other,
    double t,
  ) {
    if (other is! MyImages) {
      return this;
    }
    return MyImages(
      testImage: testImage,

    );
  }

  static const MyImages dark = MyImages(
    testImage: AppDarkImages.darkImage,

  );

  static const MyImages light = MyImages(
    testImage: AppLightImages.lightImage,
  );
}
