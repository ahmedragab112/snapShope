import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:newstore/core/cache/cache_helper.dart';
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

  void changeTheme(ThemeMode newTheme) {
    emit(AppcontrollerInitial());
    appTheme = newTheme;
    savingTheme(newTheme);
    emit(ChangeTheme());
  }

  void savingTheme(ThemeMode themeMode) async {
    String theme = themeMode == ThemeMode.dark ? 'dark' : 'light';
    await locator<CacheHelper>().setString('theme', theme);
  }

  String? getTheme() {
    return locator<CacheHelper>().getString('theme');
  }

  Future<void> cashTheme() async {
    String? oldTheme = getTheme();
    if (oldTheme != null) {
      appTheme = oldTheme == 'dark' ? ThemeMode.dark : ThemeMode.light;
    }
  }

  Future<void> saveLanguage(String lang) async {
    String language = lang == 'en' ? 'en' : 'ar';
    await locator<CacheHelper>().setString('language', language);
  }

  Future<void> cashLanguage() async {
    String? oldLanguage = getLanguage();
    if (oldLanguage != null) {
      languageCode = oldLanguage == 'en' ? 'en' : 'ar';
    }
  }

  String? getLanguage() {
    return locator<CacheHelper>().getString('language');
  }
}
