



import 'dart:math';

import 'package:covid19_login_ui/constants/colors.dart';
import 'package:covid19_login_ui/constants/images_path.dart';
import 'package:covid19_login_ui/screens/signup_screen.dart';
import 'package:covid19_login_ui/widgets/login_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/animated_icon.dart';
import '../widgets/custom_button.dart';
import '../widgets/login_form.dart';
import '../widgets/or_text.dart';
import '../widgets/responsive_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin{

  late AnimationController animationController = AnimationController(
      vsync: this,
    duration: const Duration(seconds: 20)
  )..repeat();


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final spaceBtwItems = height * 0.01;
    final spaceBtwSections = height * 0.03;

    return Scaffold(
      body:
      Row(
        children: [
          !ResponsiveWidget.isSmallScreen(context) ? Expanded(
            child: CustomAnimatedIcon(height: height, animationController: animationController),
          ) : const SizedBox(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: ResponsiveWidget.isSmallScreen(context) ? 20 : height * 0.1,
                  vertical: 20
                ),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.08 - 20,),
                    /// Login Text
                    const LoginText(text: 'Login',),
                    SizedBox(height: height * 0.03,),

                    /// Facebook Button
                    const CustomButton(
                      text: 'Continue with Facebook',
                      icon: Images.facebookIcon,
                      buttonColor: AppColors.orangeColor,
                      iconColor: Colors.white,
                    ),
                    SizedBox(height: spaceBtwItems,),

                    /// Google Button
                    const CustomButton(
                      buttonColor: Colors.white,
                      text: 'Continue with Google',
                      textColor: Colors.black,
                      icon: Images.googleIcon,
                    ),
                    SizedBox(height: spaceBtwSections,),

                    /// OR Text
                    const ORText(),
                    SizedBox(height: spaceBtwSections,),

                    /// Login Form
                    /// Email & Password TextFields
                    const LoginForm(),
                    SizedBox(height: spaceBtwSections,),

                    /// SignIn Button
                    const CustomButton(
                      buttonColor: AppColors.blueColor,
                      text: 'Sign in',
                    ),
                    SizedBox(height: spaceBtwItems,),

                    /// Forgot Button
                    const CustomButton(
                      buttonColor: Colors.white,
                      text: 'Forgot password',
                      textColor: Colors.black,
                    ),
                    SizedBox(height: spaceBtwItems,),

                    /// if dont have an account
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),)),
                      child: const Text.rich(
                          TextSpan(
                              style: TextStyle(fontSize: 12, color: AppColors.greyColor,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(text: "Didn't have an account? "),
                                TextSpan(text: 'Sign up', style: TextStyle(color: AppColors.blueColor))
                              ]
                          )
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}








