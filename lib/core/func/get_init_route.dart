import 'package:newstore/config/router/app_routes.dart';
import 'package:newstore/core/cache/store.dart';
import 'package:newstore/core/di/locator.dart';
import 'package:newstore/core/extension/extension.dart';

String? getInitRoute() {
  final preferences = sl<ObjectBoxManager>().getPreferences();

  // Check if the token is null or empty and onboarding has been visited
  if (!preferences.token.isNullOrEmpty() &&
      preferences.isOnboardingVisited != null) {
    return AppRoutes.home;
  }

  // Check if onboarding has been visited
  if (preferences.isOnboardingVisited == true) {
    return AppRoutes.login;
  }

  // Default to dashboard
  return AppRoutes.dashboard;
}
