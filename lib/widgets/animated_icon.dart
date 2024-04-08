


import 'dart:math';

import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/images_path.dart';

class CustomAnimatedIcon extends StatelessWidget {
  const CustomAnimatedIcon({
    super.key,
    required this.height,
    required this.animationController,
  });

  final double height;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: AppColors.orangeColor,
      child: AnimatedBuilder(
        animation: animationController,
        child: Center(
          child: SizedBox(
              width: height / 2.3,
              height: height / 2.3,
              child: Image.asset(Images.worldIcon)),
        ),
        builder: (context, child) {
          return Transform.rotate(
            angle:animationController.value * 2 * pi,
            child: child,
          );
        },
      ),
    );
  }
}