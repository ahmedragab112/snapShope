import 'package:flutter/material.dart';
import 'package:newstore/core/styles/colors/dartk_color.dart';
import 'package:newstore/core/styles/colors/light_color.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.mainColor,
    required this.bluePinkDark,
    required this.bluePinkLight,
    required this.textColor,
    required this.textFormBorder,
    required this.navBarbg,
    required this.navBarSelectedTab,
    required this.containerShadow1,
    required this.containerShadow2,
    required this.containerLinear1,
    required this.containerLinear2,
  });

  final Color? mainColor;
  final Color? bluePinkDark;
  final Color? bluePinkLight;
  final Color? textColor;
  final Color? textFormBorder;
  final Color? navBarbg;
  final Color? navBarSelectedTab;
  final Color? containerShadow1;
  final Color? containerShadow2;
  final Color? containerLinear1;
  final Color? containerLinear2;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? mainColor,
    Color? bluePinkDark,
    Color? bluePinkLight,
    Color? textColor,
    Color? textFormBorder,
    Color? navBarbg,
    Color? navBarSelectedTab,
    Color? containerShadow1,
    Color? containerShadow2,
    Color? containerLinear1,
  }) {
    return MyColors(
      mainColor: mainColor,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navBarbg: navBarbg,
      navBarSelectedTab: navBarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
    );
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      mainColor: mainColor,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navBarbg: navBarbg,
      navBarSelectedTab: navBarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
    );
  }

  static const MyColors dark = MyColors(
    mainColor: DarkColor.mainColor,
    bluePinkDark: DarkColor.blueDark,
    bluePinkLight: DarkColor.blueLight,
    textColor: DarkColor.white,
    textFormBorder: DarkColor.blueLight,
    navBarbg: DarkColor.navBarDark,
    navBarSelectedTab: DarkColor.white,
    containerShadow1: DarkColor.black1,
    containerShadow2: DarkColor.black2,
    containerLinear1: DarkColor.black1,
    containerLinear2: DarkColor.black2,
  );

  static const MyColors light = MyColors(
    mainColor: LightColor.mainColor,
    bluePinkDark: LightColor.pinkDark,
    bluePinkLight: LightColor.pinkLight,
    textColor: LightColor.black,
    textFormBorder: LightColor.pinkLight,
    navBarbg: LightColor.mainColor,
    navBarSelectedTab: LightColor.pinkDark,
    containerShadow1: LightColor.white,
    containerShadow2: LightColor.white,
    containerLinear1: LightColor.pinkDark,
    containerLinear2: LightColor.pinkLight,
  );
}
