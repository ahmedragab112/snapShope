import 'dart:developer';

import 'package:newstore/core/cache/objectbox_entity.dart';
import '../../objectbox.g.dart';

class ObjectBoxManager {
  final Store store;
  late final Box<Preferences> _preferencesBox;

  ObjectBoxManager._create(this.store) {
    _preferencesBox = store.box<Preferences>();
  }
  void getPreferencesCount() {
   //for test how many objects stored in database
    log(_preferencesBox.getAll().length.toString());
  }

  static Future<ObjectBoxManager> create() async {
    final store = await openStore();
    return ObjectBoxManager._create(store);
  }

  Preferences _getPreferences() {
    Preferences? preferences = _preferencesBox
        .get(1); // Assuming there's only one Preferences object with id = 1
    if (preferences == null) {
      preferences = Preferences();
      _preferencesBox.put(preferences);
    }
    return preferences;
  }

  void updateTokenType(String? tokenType) {
    final preferences = _getPreferences();
    preferences.tokenType = tokenType;
    _preferencesBox.put(preferences);
  }

  void updateToken(String? token) {
    final preferences = _getPreferences();
    preferences.token = token;
    _preferencesBox.put(preferences);
  }

  void updateIdentity(String? identity) {
    final preferences = _getPreferences();
    preferences.identity = identity;
    _preferencesBox.put(preferences);
  }

  void updateCookies(String? cookies) {
    final preferences = _getPreferences();
    preferences.cookies = cookies;
    _preferencesBox.put(preferences);
  }

  void updateCookiesMap(Map<String, dynamic>? cookiesMap) {
    final preferences = _getPreferences();
    preferences.cookiesMap =
        cookiesMap != null ? Preferences.mapToBytes(cookiesMap) : null;
    _preferencesBox.put(preferences);
  }

  void updateIsOnboardingVisited(bool? isOnboardingVisited) {
    final preferences = _getPreferences();
    preferences.isOnboardingVisited = isOnboardingVisited;
    _preferencesBox.put(preferences);
  }

  void updateOtp(String? otp) {
    final preferences = _getPreferences();
    preferences.otp = otp;
    _preferencesBox.put(preferences);
  }

  void updatePhone(String? phone) {
    final preferences = _getPreferences();
    preferences.phone = phone;
    _preferencesBox.put(preferences);
  }

  void updateLanguage(String? language) {
    final preferences = _getPreferences();
    preferences.language = language;
    _preferencesBox.put(preferences);
  }

  void updateTheme(String? theme) {
    final preferences = _getPreferences();
    preferences.theme = theme;
    _preferencesBox.put(preferences);
  }

  Preferences getPreferences() => _getPreferences();

  void close() {
    store.close();
  }
}
