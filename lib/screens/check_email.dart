import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/widgets/button_widget.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({
    super.key,
  });

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
                'Check your email',
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              const Text(
                'We have sent an email with password reset information to cheksokonkwo@gmail.com',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Didn’t receive email? Check spam folder or',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              MyButton(
                label: 'Resend Email',
                backgroundColor: primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.resetPasswordScreen);
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
