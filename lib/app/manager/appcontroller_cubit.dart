import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:newstore/core/cache/objectbox_entity.dart';
import 'package:newstore/core/cache/prefrence_repo.dart';

import 'package:newstore/core/di/locator.dart';

part 'appcontroller_state.dart';

class AppControllerCubit extends Cubit<AppControllerState> {
  String languageCode = 'en';
  ThemeMode appTheme = ThemeMode.dark;
  AppControllerCubit() : super(AppcontrollerInitial());
  void changeLanguage(String language) {
    emit(AppcontrollerInitial());
    languageCode = language;
    saveLanguage(language);
    emit(ChangeLanguage());
  }

  void changeTheme(ThemeMode newTheme) async {
    emit(AppcontrollerInitial());
    appTheme = newTheme;
    await savingTheme(newTheme);
    emit(ChangeTheme());
  }

  Future<void> savingTheme(ThemeMode themeMode) async {
    String theme = themeMode == ThemeMode.dark ? 'dark' : 'light';

    locator<PreferencesRepository>()
        .savePreferences(Preferences(id: 1, theme: theme));
  }

  String? getTheme() {
    return locator<PreferencesRepository>().getPreferences(1)?.theme;
  }

  Future<void> cashTheme() async {
    String? oldTheme = getTheme();
    if (oldTheme != null) {
      appTheme = oldTheme == 'dark' ? ThemeMode.dark : ThemeMode.light;
    }
  }

  Future<void> saveLanguage(String lang) async {
    String language = lang == 'en' ? 'en' : 'ar';
    locator<PreferencesRepository>()
        .savePreferences(Preferences(id: 1, language: language));
  }

  Future<void> cashLanguage() async {
    String? oldLanguage = getLanguage();
    if (oldLanguage != null) {
      languageCode = oldLanguage == 'en' ? 'en' : 'ar';
    }
  }

  String? getLanguage() {
    return locator<PreferencesRepository>().getPreferences(1)?.language;
  }
}
