


import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ORText extends StatelessWidget {
  const ORText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'OR',
      style: TextStyle(
          fontSize: 12,
          color: AppColors.greyColor,
          fontWeight: FontWeight.bold
      ),
    );
  }
}