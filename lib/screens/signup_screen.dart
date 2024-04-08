


import 'package:covid19_login_ui/screens/login_screen.dart';
import 'package:covid19_login_ui/widgets/signup_form.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/images_path.dart';
import '../widgets/animated_icon.dart';
import '../widgets/custom_button.dart';
import '../widgets/login_text.dart';
import '../widgets/or_text.dart';
import '../widgets/responsive_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with TickerProviderStateMixin {

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
      body: Row(
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
                    const LoginText(text: 'Create an account',),
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
                    /// Name, Email & Password TextFields
                    const SignUpForm(),
                    SizedBox(height: spaceBtwSections,),

                    /// SignIn Button
                    const CustomButton(
                      buttonColor: AppColors.blueColor,
                      text: 'Sign up'
                    ),
                    SizedBox(height: spaceBtwItems,),

                    /// if dont have an account
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),)),
                      child: const Text.rich(
                          TextSpan(
                              style: TextStyle(fontSize: 12, color: AppColors.greyColor,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(text: "If already have an account "),
                                TextSpan(text: 'Sign in', style: TextStyle(color: AppColors.blueColor))
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
      ),
    );
  }
}
