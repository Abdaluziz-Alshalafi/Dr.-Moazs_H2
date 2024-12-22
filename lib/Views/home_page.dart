// import 'package:test_2/widgets/Abdaluziz_button.dart';
// import 'package:abdaluziz_hw_1/Views/CustomAppBar.dart';
import 'package:abdaluziz_hw_1/Views/mode_icon.dart';
import 'package:abdaluziz_hw_1/theme/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:abdaluziz_hw_1/theme/color.dart';
import 'package:abdaluziz_hw_1/views/login_page.dart';
import 'package:abdaluziz_hw_1/widgets/Abdaluziz_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const moonIcon = CupertinoIcons.moon_stars;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          const SizedBox(width: 20),
          IconButton(
            icon: const Icon(
              moonIcon,
              color: Colors.grey,
            ),
            onPressed: () {
              Themestyles().changeTheme();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          AbdaluzizButton(
              voidCallback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              name: "project",
              shadowColor: AppColor.secandryColor),
          SizedBox(
            height: 10,
          ),
          AbdaluzizButton(
              voidCallback: () {
                Themestyles().darkTheme;
              },
              name: "تسجيل دخول",
              shadowColor: Colors.red),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
