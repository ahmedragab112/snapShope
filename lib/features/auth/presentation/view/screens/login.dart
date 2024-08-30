import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/features/auth/presentation/view/refactore/login_body.dart';
import 'package:newstore/features/auth/presentation/view/widget/custom_auth_paint.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomPaint(
          size: Size(context.width, 80.h),
          painter: AuthCustomPainter(
            gradient: LinearGradient(
              colors: [
                context.getColorTheme.bluePinkLight!,
                context.getColorTheme.bluePinkLight!,
                context.getColorTheme.bluePinkLight!,
                context.getColorTheme.bluePinkDark!,
              ],
            ),
          ),
        ),
        body: const LoginBody());
  }
}
