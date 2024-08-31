import 'package:newstore/core/cache/store.dart';
import 'package:newstore/core/di/locator.dart';

class FontFamilyHelper {
  static const String cairoArabic = 'Cairo';

  static const String poppinsEnglish = 'Poppins';
  static String getFont() {
    if (sl<ObjectBoxManager>().getPreferences().language == 'en') {
      return poppinsEnglish;
    }
    return cairoArabic;
  }
}
