// import 'package:abdaluziz_hw_1/Views/CustomAppBar';
import 'package:abdaluziz_hw_1/theme/styles.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:abdaluziz_hw_1/views/Home_page.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themestyles().LightTheme,
      darkTheme: Themestyles().darkTheme,
      themeMode: Themestyles().getThemeMode(),

      // initialRoute: ,
      home: const HomePage(),
    );
  }
}
