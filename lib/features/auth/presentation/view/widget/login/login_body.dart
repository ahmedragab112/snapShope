import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/app/manager/appcontroller_cubit.dart';
import 'package:newstore/config/router/app_routes.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/core/styles/style/app_text_style.dart';
import 'package:newstore/features/auth/presentation/view/widget/custom_button.dart';
import 'package:newstore/features/auth/presentation/view/widget/login/login_form.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BounceInLeft(
                        child: CustomAuthButton(
                          onTap: () => context
                              .read<AppControllerCubit>()
                              .changeTheme(
                                  context.read<AppControllerCubit>().appTheme ==
                                          ThemeMode.light
                                      ? ThemeMode.dark
                                      : ThemeMode.light),
                          edgeInsets: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 8.h),
                          child: Icon(
                            context.getIconTheme.themeIcon,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      BounceInRight(
                        child: CustomAuthButton(
                          onTap: () => context
                              .read<AppControllerCubit>()
                              .changeLanguage(context
                                          .read<AppControllerCubit>()
                                          .languageCode ==
                                      'en'
                                  ? 'ar'
                                  : 'en'),
                          edgeInsets: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 8.h),
                          child: Text(
                            context.getText.language,
                            style: AppTextSyle.font12Black.copyWith(
                              fontSize: 18.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  SlideInDown(
                    child: Text(
                      context.getText.login,
                      style: context.getTheme.bodyLarge!.copyWith(
                        color: context.getColorTheme.textColor,
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  FadeInDown(
                    animate: true,
                    duration: const Duration(milliseconds: 1000),
                    child: Text(
                      context.getText.getStarted,
                      style: context.getTheme.bodyMedium!.copyWith(
                        color: context.getColorTheme.textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  30.verticalSpace,
                  LoginForm(
                    emailController: emailController,
                    passwordController: passwordController,
                  ),
                  30.verticalSpace,
                  CustomAuthButton(
                    width: double.infinity,
                    onTap: () {},
                    child: Animate(
                      delay: const Duration(milliseconds: 500),
                      effects: const [FadeEffect(), ScaleEffect()],
                      child: Text(
                        context.getText.login,
                        textAlign: TextAlign.center,
                        style: context.getTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  30.verticalSpace,
                  GestureDetector(
                    onTap: () => context.pushNamed(AppRoutes.signUp),
                    child: Text(context.getText.createAccount,
                        style: AppTextSyle.font12Black.copyWith(
                            color: context.getColorTheme.bluePinkLight,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ).setPadding(context, horizontal: 20, vertical: 10),
    );
  }
}
