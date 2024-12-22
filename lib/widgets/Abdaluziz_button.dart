import 'package:flutter/material.dart';
import 'package:abdaluziz_hw_1/theme/color.dart';
import 'package:abdaluziz_hw_1/utils/constants.dart';

class AbdaluzizButton extends StatelessWidget {
  final VoidCallback voidCallback;

  final String? name;
  final Color? shadowColor;
  const AbdaluzizButton(
      {super.key, required this.voidCallback, this.name, this.shadowColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: voidCallback,
        style: ElevatedButton.styleFrom(
            elevation: defualtshadow, shadowColor: shadowColor ?? primaryColor),
        child: Text(name ?? "Button"));
  }
}
