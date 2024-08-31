import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/config/router/app_routes.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/core/styles/style/app_text_style.dart';
import 'package:newstore/features/auth/presentation/view/widget/custom_button.dart';
import 'package:newstore/features/auth/presentation/view/widget/sign_up/signup_form.dart';
import 'package:newstore/features/auth/presentation/view/widget/sign_up/signup_image.dart';

import '../../../../../app/manager/appcontroller_cubit.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
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
                    context.getText.signUp,
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
                    context.getText.addYourInformation,
                    style: context.getTheme.bodyMedium!.copyWith(
                      color: context.getColorTheme.textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                30.verticalSpace,
                const SignupImage(),
                30.verticalSpace,
                SignupForm(
                  emailController: emailController,
                  passwordController: passwordController,
                  fullNameController: nameController,
                  formKey: formKey,
                ),
                30.verticalSpace,
                FadeInUpBig(
                  child: CustomAuthButton(
                    width: double.infinity,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        // context
                        //     .read<AppControllerCubit>()
                        //     .signUp(emailController.text, passwordController.text, nameController.text);
                      }
                    },
                    child: Text(
                      context.getText.signUp,
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
                  onTap: () => context.pushNamed(AppRoutes.login),
                  child: Text(context.getText.alreadyHaveAccount,
                      style: AppTextSyle.font12Black.copyWith(
                          color: context.getColorTheme.bluePinkLight,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ],
      ).setPadding(context, horizontal: 20, vertical: 10),
    );
  }
}
