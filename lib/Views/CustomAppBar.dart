
import 'package:abdaluziz_hw_1/control/theme_control.dart';
import 'package:abdaluziz_hw_1/theme/color.dart';
import 'package:abdaluziz_hw_1/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const moonIcon = CupertinoIcons.moon_stars;
    final Theme_control theme_control = Theme_control();

    return AppBar(
      title: Text('Abdaluziz'),
      backgroundColor: theme_control.isSavedDarkMode()
          ? Color.fromARGB(224, 96, 108, 116)
          : Color.fromARGB(225, 88, 137, 170),
      elevation: 0,
      actions: [
        const SizedBox(width: 20),
        IconButton(
          icon: const Icon(
            moonIcon,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          onPressed: () {
            Theme_control().changeTheme();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
