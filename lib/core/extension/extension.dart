import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/core/extension/colors_theme.dart';
import 'package:newstore/core/extension/icon_theme.dart';
import 'package:newstore/core/extension/image_extenstion.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:alert_banner/exports.dart';

extension NavigatorHelper on BuildContext {
  MyColors get getColorTheme => Theme.of(this).extension<MyColors>()!;
  MyAssets get getImageTheme => Theme.of(this).extension<MyAssets>()!;
  MyIcons get getIconTheme => Theme.of(this).extension<MyIcons>()!;
  AppLocalizations get getText => AppLocalizations.of(this)!;
  TextTheme get getTheme => Theme.of(this).textTheme;
  void push(Widget widget) {
    Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;
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

enum SnackPosition {
  top,
  bottom,
}

extension SnackBarExtensions on BuildContext {
  void showSnack({
    required String message,
    double? fontSize,
    Color? backgroundColor,
    Color? foregroundColor,
    Duration duration = const Duration(seconds: 3),
    SnackBarBehavior behavior = SnackBarBehavior.floating,
    SnackPosition position = SnackPosition.bottom,
    double? verticalGap,
    IconData? icon,
  }) {
    showAlertBanner(
      this,
      () {},
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        margin:
            EdgeInsets.symmetric(horizontal: 8, vertical: verticalGap ?? 16),
        decoration: BoxDecoration(
          color: backgroundColor ?? getColorTheme.mainColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 1,
              spreadRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon ?? Icons.info_outline,
              color: foregroundColor ?? getColorTheme.bluePinkLight,
              size: 24,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: foregroundColor ?? getColorTheme.mainColor,
                  fontWeight: FontWeight.w600,
                  fontSize: fontSize ?? 12,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ],
        ),
      ),
      durationOfStayingOnScreen: duration,
      alertBannerLocation: position == SnackPosition.top
          ? AlertBannerLocation.top
          : AlertBannerLocation.bottom,
    );
  }

  void showDangerSnack({
    required String message,
    Duration duration = const Duration(seconds: 3),
    SnackPosition position = SnackPosition.bottom,
    double? verticalGap,
    IconData? icon,
  }) {
    showSnack(
      message: message,
      backgroundColor: getColorTheme.mainColor,
      foregroundColor: getColorTheme.mainColor,
      duration: duration,
      position: position,
      verticalGap: verticalGap,
      icon: icon ?? Icons.error_outline,
    );
  }

  void showWarningSnack({
    required String message,
    Duration duration = const Duration(seconds: 3),
    SnackPosition position = SnackPosition.bottom,
    double? verticalGap,
    IconData? icon,
  }) {
    showSnack(
      message: message,
      backgroundColor: getColorTheme.mainColor,
      foregroundColor: getColorTheme.mainColor,
      duration: duration,
      position: position,
      verticalGap: verticalGap,
      icon: icon ?? Icons.warning_amber_outlined,
    );
  }

  void showSuccessSnack({
    required String message,
    Duration duration = const Duration(seconds: 3),
    SnackPosition position = SnackPosition.bottom,
    double? verticalGap,
    IconData? icon,
  }) {
    showSnack(
      message: message,
      backgroundColor: getColorTheme.mainColor,
      foregroundColor: getColorTheme.mainColor,
      duration: duration,
      position: position,
      verticalGap: verticalGap,
      icon: icon ?? Icons.check_circle_outline,
    );
  }

  void showInfoSnack({
    required String message,
    Duration duration = const Duration(seconds: 3),
    SnackPosition position = SnackPosition.bottom,
    double? verticalGap,
    IconData? icon,
  }) {
    showSnack(
      message: message,
      backgroundColor: getColorTheme.mainColor,
      foregroundColor: getColorTheme.mainColor,
      duration: duration,
      position: position,
      verticalGap: verticalGap,
      icon: icon ?? Icons.info_outline,
    );
  }

  void showBasicSnack({
    required String message,
    double? fontSize,
    Color? backgroundColor,
    Color? foregroundColor,
    Duration duration = const Duration(seconds: 3),
    SnackPosition position = SnackPosition.bottom,
    double? verticalGap,
    IconData? icon,
  }) {
    showSnack(
      message: message,
      fontSize: fontSize,
      backgroundColor: backgroundColor ?? getColorTheme.mainColor,
      foregroundColor: foregroundColor ?? getColorTheme.containerLinear2,
      duration: duration,
      position: position,
      verticalGap: verticalGap,
      icon: icon,
    );
  }

}


extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

extension MapExtension<K, V> on Map<K, V>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}