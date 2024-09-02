import 'package:flutter/material.dart';
import 'package:newstore/features/onboarding/widgets/custom_pageview_widget.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: CustomPageViewWidget(),
        )
      ],
    );
  }
}
