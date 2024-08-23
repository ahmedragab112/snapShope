import 'package:newstore/core/cache/cache_helper.dart';
import 'package:newstore/core/cache/cache_keys.dart';
import 'package:newstore/core/di/locator.dart';

class FontFamilyHelper {
  static const String cairoArabic = 'Cairo';

  static const String poppinsEnglish = 'Poppins';
  static String getFont() {
    if (locator<CacheHelper>().getString(CacheKeys.languageKey) == 'en') {
      return poppinsEnglish;
    }
    return cairoArabic;
  }
}
