import 'package:flutter/material.dart';
import 'package:login_page/colors.dart';
import 'package:login_page/responsiveWidget.dart';
import 'package:login_page/widgets/forgot_password_text.dart';
import 'package:login_page/widgets/login_banner.dart';
import 'package:login_page/widgets/login_form.dart';
import 'package:login_page/widgets/sign_in_button.dart';
import 'package:login_page/widgets/title_and_subtitle.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Row(
          children: [
            /// This is left side banner
            ResponsiveWidget.isSmallScreen(context) ? const SizedBox() : const Expanded(child: LoginBanner()),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(height * 0.032),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.2,),
                    /// This is Title And Subtitle
                    const TitleAndSubtitle(),
                    SizedBox(height: height * 0.064,),
              
                    /// Email and Password Fields
                    const LoginForm(),
                    SizedBox(height: height * 0.03,),
              
                    /// Forgot Password
                    const ForgotPasswordText(),
                    SizedBox(height: height * 0.064,),
              
                    /// Sign In Button
                    const SignInButton()
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}


