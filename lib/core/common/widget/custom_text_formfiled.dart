import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/core/styles/style/app_text_style.dart';

class CustomTextFormFild extends StatelessWidget {
  const CustomTextFormFild({
    super.key,
    required this.hintText,
    required this.padding,
    this.leadingIcon,
    this.obscureText = false,
    this.suffixIcon,
    required this.controller,
    this.type = TextInputType.none,
    this.validator,
  });
  final String hintText;
  final EdgeInsets padding;
  final Icon? leadingIcon;
  final Widget? suffixIcon;
  final TextInputType type;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: type,
        style: AppTextSyle.font12Black
            .copyWith(fontSize: 12.sp, color: context.getColorTheme.textColor),
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: AppTextSyle.font12Black
              .copyWith(color: context.getColorTheme.textColor),
          hintText: hintText,
          prefixIcon: leadingIcon,
          contentPadding: padding,
          isDense: true,
          suffixIcon: suffixIcon,
        ),
        obscureText: obscureText);
  }
}
