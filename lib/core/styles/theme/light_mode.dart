import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/core/extension/colors_theme.dart';
import 'package:newstore/core/extension/image_extenstion.dart';
import 'package:newstore/core/styles/colors/light_color.dart';
import 'package:newstore/core/styles/fonts/font_family_helper.dart';
import 'package:newstore/core/styles/fonts/font_weight_helper.dart';

class LightMode {
  static ThemeData lightMode = ThemeData(
    brightness: Brightness.dark,
    primaryColor: LightColor.white,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light, MyAssets.light],
    useMaterial3: true,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: LightColor.black,
        fontSize: 16.sp,
        fontWeight: FontWeightHelper.normal,
        fontFamily: FontFamilyHelper.getFont(),
      ),
      bodyLarge: TextStyle(
        color: LightColor.black,
        fontSize: 20.sp,
        fontWeight: FontWeightHelper.bold,
        fontFamily: FontFamilyHelper.getFont(),
      ),
      bodySmall: TextStyle(
        color: LightColor.black,
        fontSize: 14.sp,
        fontWeight: FontWeightHelper.regular,
        fontFamily: FontFamilyHelper.getFont(),
      ),
    ),
  );
}
