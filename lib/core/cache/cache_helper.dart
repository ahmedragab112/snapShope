import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String getString(String key, {String defaultValue = ''}) {
    return _prefs.getString(key) ?? defaultValue;
  }

  int getInt(String key, {int defaultValue = 0}) {
    return _prefs.getInt(key) ?? defaultValue;
  }

  double getDouble(String key, {double defaultValue = 0.0}) {
    return _prefs.getDouble(key) ?? defaultValue;
  }

  bool getBool(String key, {bool defaultValue = false}) {
    return _prefs.getBool(key) ?? defaultValue;
  }

  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  Future<bool> setInt(String key, int value) async {
    return await _prefs.setInt(key, value);
  }

  Future<bool> setDouble(String key, double value) async {
    return await _prefs.setDouble(key, value);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  Future<bool> remove(String key) async {
    return await _prefs.remove(key);
  }

  // New method to set instance with dynamic type handling
  Future<bool> setInstance(
      {required String key, required dynamic value}) async {
    if (value is String) {
      return await _prefs.setString(key, value);
    } else if (value is int) {
      return await _prefs.setInt(key, value);
    } else if (value is double) {
      return await _prefs.setDouble(key, value);
    } else if (value is bool) {
      return await _prefs.setBool(key, value);
    } else {
      throw ArgumentError("Unsupported value type");
    }
  }

  dynamic getInstance({dynamic defaultValue, required String key}) {
    if (defaultValue is String) {
      return _prefs.getString(key) ?? defaultValue;
    } else if (defaultValue is int) {
      return _prefs.getInt(key) ?? defaultValue;
    } else if (defaultValue is double) {
      return _prefs.getDouble(key) ?? defaultValue;
    } else if (defaultValue is bool) {
      return _prefs.getBool(key) ?? defaultValue;
    } else {
      throw ArgumentError("Unsupported default value type");
    }
  }
}
