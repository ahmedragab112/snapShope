
import 'package:newstore/core/cache/prefrence_repo.dart';
import 'package:newstore/core/di/locator.dart';

class FontFamilyHelper {
  static const String cairoArabic = 'Cairo';

  static const String poppinsEnglish = 'Poppins';
  static String getFont() {
    if (locator<PreferencesRepository>().getPreferences(1)?.language == 'en') {
      return poppinsEnglish;
    }
    return cairoArabic;
  }
}
