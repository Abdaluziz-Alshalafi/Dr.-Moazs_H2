// import 'package:test_2/widgets/Abdaluziz_button.dart';
import 'package:abdaluziz_hw_1/Views/CustomAppBar.dart';
import 'package:abdaluziz_hw_1/control/theme_control.dart';
import 'package:abdaluziz_hw_1/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:abdaluziz_hw_1/theme/color.dart';
import 'package:abdaluziz_hw_1/views/login_page.dart';
import 'package:abdaluziz_hw_1/widgets/Abdaluziz_button.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Themestyles themeStyles = Themestyles();
    final Theme_control theme_control = Theme_control();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeStyles.LightTheme,
      darkTheme: themeStyles.darkTheme,
      themeMode: theme_control.getThemeMode(),
      home: HomePage(),
    );
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: AbdaluzizButton(
            voidCallback: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            name: "تسجيل دخول",
            shadowColor: Colors.red),
      ),
    );
  }
}
