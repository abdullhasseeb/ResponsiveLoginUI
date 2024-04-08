


import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? isObscure;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscure = false,
    this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
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
      child: TextFormField(
        obscureText: isObscure!,
        controller: controller,
        style: TextStyle(fontSize: 12,color: Colors.grey.shade700),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 23
            ),
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: 12,
                color: AppColors.greyColor
            ),
          suffixIcon: (suffixIcon != null) ? suffixIcon : null
        ),
      ),
    );
  }
}