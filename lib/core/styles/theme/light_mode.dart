import 'package:flutter/material.dart';
import 'package:newstore/core/extension/colors_theme.dart';
import 'package:newstore/core/extension/image_extenstion.dart';
import 'package:newstore/core/styles/colors/light_color.dart';

class LightMode {
  static ThemeData lightMode = ThemeData(
    brightness: Brightness.dark,
    primaryColor: LightColor.white,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light, MyImages.light],
    useMaterial3: true,
  );
}
