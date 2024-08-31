import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/core/common/widget/custom_text_formfiled.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/core/func/validation.dart';

import '../../../manager/auth_bloc.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.fullNameController,
    required this.formKey,
  });
  final TextEditingController emailController,
      passwordController,
      fullNameController;

  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          FadeInLeft(
            child: CustomTextFormFild(
              controller: fullNameController,
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return 'Please enter full name';
                }
                return null;
              },
              hintText: context.getText.fullName,
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
              leadingIcon: const Icon(Icons.person),
            ),
          ),
          30.verticalSpace,
          FadeInRight(
            child: CustomTextFormFild(
              controller: emailController,
              hintText: context.getText.email,
              validator:AppValidationData.emailValidation,
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
              leadingIcon: const Icon(Icons.email),
            ),
          ),
          30.verticalSpace,
          FadeInRight(
            child: BlocBuilder<AuthBloc, AuthState>(
              buildWhen: (previous, current) => current is ChangeEye,
              builder: (context, state) {
                return CustomTextFormFild(
                  obscureText: context.read<AuthBloc>().eye,
                  controller: passwordController,
                  validator: AppValidationData.passwordValidation,
                  hintText: context.getText.password,
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
                  leadingIcon: const Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                    onTap: () => context.read<AuthBloc>().add(ChangeEyeEvent()),
                    child: Icon(
                      context.read<AuthBloc>().eye == true
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: context.getColorTheme.textColor,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
