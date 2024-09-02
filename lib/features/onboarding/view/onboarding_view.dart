import 'package:flutter/material.dart';
import 'package:newstore/features/onboarding/widgets/onbarding_body.dart';
//TODO onboarding view is not done with localization and themeing 
class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: OnBoardingBody()),
    );
  }
}
