import 'package:flutter/material.dart';
import 'package:newstore/core/styles/icons/app_icons.dart';

class MyIcons extends ThemeExtension<MyIcons> {
  const MyIcons({
    required this.themeIcon,
  });

  final IconData? themeIcon;

  @override
  ThemeExtension<MyIcons> copyWith({
    IconData? themeIcon,
  }) {
    return MyIcons(
      themeIcon: themeIcon,
    );
  }

  @override
  ThemeExtension<MyIcons> lerp(
    covariant ThemeExtension<MyIcons>? other,
    double t,
  ) {
    if (other is! MyIcons) {
      return this;
    }
    return MyIcons(
      themeIcon: themeIcon,
    );
  }

  static const MyIcons dark = MyIcons(themeIcon: AppLightIcons.dark);

  static const MyIcons light = MyIcons(themeIcon: AppDarkIcons.light);
}
