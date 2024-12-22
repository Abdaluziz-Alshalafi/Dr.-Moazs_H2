import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Themestyles {
  final LightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blueGrey.shade300,
    appBarTheme: const AppBarTheme(),
    scaffoldBackgroundColor: Colors.blueGrey.shade100,
    dividerColor: Colors.black12,
  );

  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.blue,
    appBarTheme: const AppBarTheme(),
    scaffoldBackgroundColor: Colors.blueGrey.shade900,
    dividerColor: Colors.white54,
  );

  final _getStorage = GetStorage();
  final _darkTwhemeKey = 'isDarkTheme';

  void saveThemeData(bool isDarkTheme) {
    _getStorage.write(_darkTwhemeKey, isDarkTheme);
  }

  bool isSavedDarkMode() {
    // return _getStorage.read(_darkTwhemeKey) ?? false;
    return true;
  }

  ThemeMode getThemeMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme() {
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!isSavedDarkMode());
  }
}
