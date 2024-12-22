import 'package:abdaluziz_hw_1/Views/home_page.dart';
import 'package:abdaluziz_hw_1/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ModeIcon extends StatelessWidget {
  const ModeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    const moonIcon = CupertinoIcons.moon_stars;
    const sunIcon = CupertinoIcons.sun_min;
    HomePage crt = Get.put(HomePage());

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
    );
  }
}
