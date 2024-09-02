import 'package:flutter/material.dart';
import 'package:newstore/core/cache/store.dart';
import 'package:newstore/core/di/locator.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/core/strings/app_strings.dart';

import '../../../config/router/app_routes.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.index,
      required this.controller,
      this.nextPage = true,
      required this.text});
  final int index;
  final PageController controller;
  final bool nextPage;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        nextPage
            ? controller.nextPage(
                duration: const Duration(milliseconds: 500), curve: Curves.ease)
            : controller.previousPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
        if (index == 2 && nextPage == true) {
          sl<ObjectBoxManager>().updateIsOnboardingVisited(true);
          context.pushReplacementNamed(AppRoutes.login);
        }
      },
      child: Text(
        nextPage
            ? index != 2
                ? 'next'
                : 'Get Started'
            : text,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
