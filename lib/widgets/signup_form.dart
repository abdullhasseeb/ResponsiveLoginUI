





import 'package:covid19_login_ui/constants/colors.dart';
import 'package:covid19_login_ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<SignUpForm> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final spaceBtwItems = height * 0.01;
    final spaceBtwSections = height * 0.03;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Name Text
        const Text(
          'Name',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,

          ),
        ),
        SizedBox(height: spaceBtwItems,),

        /// Name TextField
        CustomTextField(
          controller: nameController,
          hintText: 'Name',
        ),
        SizedBox(height: spaceBtwItems,),

        /// Email Text
        const Text(
          'Email',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,

          ),
        ),
        SizedBox(height: spaceBtwItems,),

        /// Email TextField
        CustomTextField(
          controller: emailController,
          hintText: 'E-mail / Username',
        ),
        SizedBox(height: spaceBtwItems,),

        /// Password Text
        const Text(
          'Password',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: spaceBtwItems,),

        /// Password TextField
        CustomTextField(
          isObscure: isObscure,
          controller: passController,
          hintText: 'Password',
          suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                isObscure = !isObscure;
              });
            },
            icon: isObscure ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
          ),
        ),
      ],
    );
  }
}


