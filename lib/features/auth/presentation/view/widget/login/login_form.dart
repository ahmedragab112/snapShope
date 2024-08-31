import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/core/common/widget/custom_text_formfiled.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/core/func/validation.dart';
import 'package:newstore/features/auth/presentation/manager/auth_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInLeft(
          child: CustomTextFormFild(
            controller: emailController,
            type: TextInputType.emailAddress,
            validator: AppValidationData.emailValidation,
            hintText: context.getText.email,
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
                validator: (value) {
                  if (value.isNullOrEmpty()) {
                    return 'Please enter password';
                  }
                  return null;
                },
                controller: passwordController,
                hintText: context.getText.password,
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
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
    );
  }
}
