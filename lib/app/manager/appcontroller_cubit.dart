
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:newstore/core/di/locator.dart';

import '../../core/cache/store.dart';

part 'appcontroller_state.dart';

class AppControllerCubit extends Cubit<AppControllerState> {
  String languageCode = 'en';
  ThemeMode appTheme = ThemeMode.dark;

  AppControllerCubit() : super(AppcontrollerInitial());
  void changeLanguage(String language) {
    emit(AppcontrollerInitial());
    languageCode = language;
    saveLanguage(languageCode);
    emit(ChangeLanguage());
  }

  void changeTheme(ThemeMode newTheme) {
    emit(AppcontrollerInitial());
    appTheme = newTheme;
    saveTheme(appTheme);
    emit(ChangeTheme());
  }

  void saveTheme(ThemeMode themeMode) {
    String theme = themeMode == ThemeMode.dark ? 'dark' : 'light';

    // Update the theme in ObjectBox
    final objectBoxManager = sl<ObjectBoxManager>();
    objectBoxManager.updateTheme(theme);
  }

  String? getTheme() {
    final theme = sl<ObjectBoxManager>().getPreferences().theme;
    return theme;
  }

  void loadCachedTheme() {
    String? oldTheme = getTheme();
    if (oldTheme != null) {
      appTheme = oldTheme == 'dark' ? ThemeMode.dark : ThemeMode.light;
    }
  }

  void saveLanguage(String lang) {
    String language = lang == 'en' ? 'en' : 'ar';

    // Update the language in ObjectBox
    final objectBoxManager = sl<ObjectBoxManager>();
    objectBoxManager.updateLanguage(language);
  }

  void loadCachedLanguage() {
    String? oldLanguage = getLanguage();
    if (oldLanguage != null) {
      languageCode = oldLanguage == 'en' ? 'en' : 'ar';
    }
  }

  String? getLanguage() {
    final language = sl<ObjectBoxManager>().getPreferences().language;
    return language;
  }
}
