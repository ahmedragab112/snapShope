import 'package:newstore/config/router/app_routes.dart';
import 'package:newstore/core/cache/prefrence_repo.dart';
import 'package:newstore/core/di/locator.dart';
import 'package:newstore/core/extension/extension.dart';

String? getInitRoute() {
  if (locator<PreferencesRepository>()
          .getPreferences(1)
          ?.token
          ?.isNullOrEmpty() ??
      false) {
    return AppRoutes.home;
  }

  return AppRoutes.login;
}
