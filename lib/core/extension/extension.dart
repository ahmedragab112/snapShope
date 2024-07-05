import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/core/extension/colors_theme.dart';
import 'package:newstore/core/extension/image_extenstion.dart';

extension NavigatorHelper on BuildContext {
  MyColors get getColorTheme => Theme.of(this).extension<MyColors>()!;
  MyImages get getImageTheme => Theme.of(this).extension<MyImages>()!;
  void push(Widget widget) {
    Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  void pushNamed(String routeName, {Object? arguments}) {
    Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  void pushReplacement(Widget widget) {
    Navigator.pushReplacement(
        this, MaterialPageRoute(builder: (context) => widget));
  }

  void pushReplacementNamed(String routeName, {Object? arguments}) {
    Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  }

  void pushAndRemoveUntil(Widget widget) {
    Navigator.pushAndRemoveUntil(
        this,
        MaterialPageRoute(
          builder: (context) => widget,
        ),
        (route) => false);
  }

  void pushNamedAndRemoveUntil(String routeName, {Object? arguments}) {
    Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false,
        arguments: arguments);
  }
}

extension PaddingToWidget on Widget {
  Widget setPadding(
    BuildContext context, {
    double vertical = 0,
    double horizontal = 0,
  }) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: vertical.h, horizontal: horizontal.w),
      child: this,
    );
  }

  Widget setOnlyPadding(
    BuildContext context, {
    double bottom = 0,
    double left = 0,
    double right = 0,
    double top = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: bottom,
        left: left,
        right: right,
        top: top,
      ),
      child: this,
    );
  }

  Widget setAllPadding(double padding) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }
}

extension ShowSnakbar on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
