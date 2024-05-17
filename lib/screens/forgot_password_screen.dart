import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/widgets/button_widget.dart';
import 'package:fly_ease_app/widgets/textfield.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({
    super.key,
  });
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const Text(
                'Forgot password',
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              const Text(
                'Please enter your registered email address and we will send you password reset instructions.',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 48),
              MyTextField(
                controller: emailController,
                obscureText: false,
                hintText: 'Email',
              ),
              const SizedBox(height: 48),
              MyButton(
                label: 'Send',
                backgroundColor: primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.checkEmailScreen);
                },
                textColor: Colors.white,
                borderColor: primaryColor,
              ),
              const SizedBox(height: 16),
              MyButton(
                label: 'Back to Sign In',
                backgroundColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.signInScreen);
                },
                textColor: primaryColor,
                borderColor: primaryColor,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
