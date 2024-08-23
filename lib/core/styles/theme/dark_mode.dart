import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/core/extension/colors_theme.dart';
import 'package:newstore/core/extension/image_extenstion.dart';
import 'package:newstore/core/styles/colors/dartk_color.dart';
import 'package:newstore/core/styles/fonts/font_family_helper.dart';
import 'package:newstore/core/styles/fonts/font_weight_helper.dart';

class DarkMode {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark, MyAssets.dark],
    primaryColor: DarkColor.blueDark,
    useMaterial3: true,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: DarkColor.white,
        fontSize: 16.sp,
        fontWeight: FontWeightHelper.normal,
        fontFamily: FontFamilyHelper.getFont(),
      ),
      bodyLarge: TextStyle(
        color: DarkColor.white,
        fontSize: 20.sp,
        fontWeight: FontWeightHelper.bold,
        fontFamily: FontFamilyHelper.getFont(),
      ),
      bodySmall: TextStyle(
        color: DarkColor.white,
        fontSize: 14.sp,
        fontWeight: FontWeightHelper.regular,
        fontFamily: FontFamilyHelper.getFont(),
      ),
    ),
  );
}
