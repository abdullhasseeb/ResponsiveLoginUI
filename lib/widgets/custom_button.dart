



import 'package:covid19_login_ui/constants/colors.dart';
import 'package:flutter/material.dart';

import '../constants/images_path.dart';

class CustomButton extends StatelessWidget {
  final Color? iconColor;
  final String text;
  final Color? textColor;
  final Color buttonColor;
  final String? icon;
  const CustomButton({
    super.key,
    this.iconColor = null,
    this.textColor = Colors.white,
    required this.buttonColor,
    required this.text,
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 1),
                spreadRadius: 0,
                blurRadius: 7,
                color: Colors.black.withOpacity(0.08)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Icon
          (icon != null) ?  Image(
            image: AssetImage(icon!),
            color: iconColor,
            height: 28,
            width: 28,
          ) : const SizedBox(),
          (icon != null) ?  const SizedBox(width: 20,) : const SizedBox(),
          /// Text
          Text(
            text,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: textColor
            ),
          )
        ],
      ),
    );
  }
}