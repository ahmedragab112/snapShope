import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/core/styles/spaceing/spaceing.dart';
import 'package:newstore/features/onboarding/manager/onboarding_cubit.dart';
import 'package:newstore/features/onboarding/widgets/inboarding_appbar.dart';
import 'package:newstore/features/onboarding/widgets/page_viewbody.dart';


class CustomPageViewWidget extends StatelessWidget {
  const CustomPageViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<OnboardingCubit>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const InBoardingAppBar(),
        const VerticalSpace(110),
        Expanded(
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: bloc.controller,
            itemBuilder: (context, index) => PageViewBody(
              data: bloc.pages(context)[index] ,
            ),
            itemCount: bloc.pages(context).length,
            onPageChanged: bloc.onPageChanged,
          ),
        ),
      ],
    ).setPadding(context, horizontal: 16, vertical: 22);
  }
}
