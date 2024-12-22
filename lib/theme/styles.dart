import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:abdaluziz_hw_1/theme/color.dart';

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
}
