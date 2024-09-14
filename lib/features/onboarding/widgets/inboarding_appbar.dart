import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/config/router/app_routes.dart';
import 'package:newstore/core/cache/store.dart';
import 'package:newstore/core/di/locator.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/core/strings/app_strings.dart';
import 'package:newstore/core/styles/style/app_text_style.dart';
import 'package:newstore/features/onboarding/manager/onboarding_cubit.dart';

class InBoardingAppBar extends StatelessWidget {
  const InBoardingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          var bloc = context.read<OnboardingCubit>();
          return RichText(
              text: TextSpan(children: [
            TextSpan(
              text: '${bloc.index + 1}',
              style: AppTextSyle.font12Black.copyWith(
                  fontSize: 20.sp, color: context.getColorTheme.textColor),
            ),
            TextSpan(
                text: '/3',
                style: AppTextSyle.font12Black.copyWith(
                    fontSize: 20.sp,
                    color: context.getColorTheme.bluePinkLight)),
          ]));
        },
      ),
      GestureDetector(
        onTap: () async {
          sl<ObjectBoxManager>().updateIsOnboardingVisited(true);
          context.pushReplacementNamed(AppRoutes.login);
        },
        child: Text(
          context.getText.skip,
          style: AppTextSyle.font12Black.copyWith(
              fontSize: 20.sp, color: context.getColorTheme.bluePinkLight),
        ),
      ),
    ]);
  }
}
