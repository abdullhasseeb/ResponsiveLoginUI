

import 'package:flutter/material.dart';

import '../colors.dart';

class LoginBanner extends StatelessWidget {
  const LoginBanner({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      color: AppColors.primaryColor,
      child: const Center(
        child: Text('Sign In',
          style: TextStyle(fontSize: 48, color: AppColors.whiteColor),),
      ),
    );
  }
}