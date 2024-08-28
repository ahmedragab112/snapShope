import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/core/extension/extension.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    this.height,
    this.width,
    this.edgeInsets = const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    this.onTap,
    required this.child,
  });
  final EdgeInsets edgeInsets;
  final double? width, height;
  final Function()? onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: edgeInsets,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          gradient: LinearGradient(
            colors: [
              context.getColorTheme.bluePinkLight!,
              context.getColorTheme.bluePinkDark!,
            ],
            begin: const Alignment(0.46, -0.89),
            end: const Alignment(-0.46, 0.89),
          ),
        ),
        child: child,
      ),
    );
  }
}
