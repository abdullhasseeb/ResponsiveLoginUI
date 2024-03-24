

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: (){},
        child: const Text('Forgot Password?',
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 12.0
          ),),
      ),
    );
  }
}