

import 'package:flutter/material.dart';

import '../colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Email Text and textField
        const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Text(
            'Email',
            style: TextStyle(
                fontSize: 12.0,
                color: AppColors.textColor,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)),
          child: TextFormField(
            style: const TextStyle(
                fontSize: 12.0,
                color: AppColors.textColor
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                prefixIcon: const Icon(Icons.email_outlined),
                hintText: 'Enter Email',
                hintStyle: TextStyle(
                    fontSize: 12.0,
                    color: AppColors.textColor.withOpacity(0.5)),
                border: InputBorder.none),
          ),
        ),
        SizedBox(height: height * 0.025,),
        /// Password Text and textField
        const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Text(
            'Password',
            style: TextStyle(
                fontSize: 12.0,
                color: AppColors.textColor,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)),
          child: TextFormField(
            obscureText: true,
            style: const TextStyle(
                fontSize: 12.0,
                color: AppColors.textColor
            ),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                prefixIcon: const Icon(Icons.lock_open),
                suffixIcon: const Icon(Icons.visibility_off_outlined),
                hintText: 'Enter Password',
                hintStyle: TextStyle(
                    fontSize: 12.0,
                    color: AppColors.textColor.withOpacity(0.5)),
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}