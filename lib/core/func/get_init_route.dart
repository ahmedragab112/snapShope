import 'package:newstore/config/router/app_routes.dart';
import 'package:newstore/core/cache/cache_helper.dart';
import 'package:newstore/core/cache/cache_keys.dart';
import 'package:newstore/core/di/locator.dart';

String? getInitRoute() {
  if (locator<CacheHelper>()
              .getInstance(key: CacheKeys.token, defaultValue: '') !=
          '' ||
      locator<CacheHelper>()
              .getInstance(key: CacheKeys.token, defaultValue: '') ==
          null) {
    if (locator<CacheHelper>()
            .getInstance(key: CacheKeys.userRole, defaultValue: '') ==
        'admine') {
      return AppRoutes.homeAdmine;
    } else {
      return AppRoutes.home;
    }
  }

  return AppRoutes.login;
}
