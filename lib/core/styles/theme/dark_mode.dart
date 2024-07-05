import 'package:flutter/material.dart';
import 'package:newstore/core/extension/colors_theme.dart';
import 'package:newstore/core/extension/image_extenstion.dart';
import 'package:newstore/core/styles/colors/dartk_color.dart';
import 'package:newstore/core/styles/images/app_images.dart';

class DarkMode {
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      extensions: const <ThemeExtension<dynamic>>[
        MyColors.dark,
        MyImages.dark
      ],
      primaryColor: DarkColor.black,
      useMaterial3: true);
}
