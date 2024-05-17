import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/widgets/button_widget.dart';
import 'package:fly_ease_app/widgets/success_widget.dart';
import 'package:fly_ease_app/widgets/textfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({
    super.key,
  });
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
                'Reset password',
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              const Text(
                'Choose a new password for your account',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 48),
              MyTextField(
                controller: newPasswordController,
                obscureText: false,
                hintText: 'Enter password',
              ),
              const SizedBox(height: 16),
              MyTextField(
                controller: confirmPasswordController,
                obscureText: true,
                hintText: 'Confirm password',
              ),
              const SizedBox(height: 22),
              MyButton(
                label: 'Reset Password',
                backgroundColor: primaryColor,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const SuccessDialog(primaryColor: primaryColor);
                      });
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
