import 'package:abdaluziz_hw_1/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Theme_control {
  final _getStorage = GetStorage();
  final _darkTwhemeKey = 'isDarkTheme';
  final AppColor appColor = AppColor();

  void saveThemeData(bool isDarkTheme) {
    _getStorage.write(_darkTwhemeKey, isDarkTheme);
  }

  bool isSavedDarkMode() {
    return _getStorage.read(_darkTwhemeKey) ?? false;
    // return true;
  }

  ThemeMode getThemeMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme() {
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!isSavedDarkMode());
  }
}
