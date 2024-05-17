import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/widgets/button_widget.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({
    super.key,
    required this.primaryColor,
  });

  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return Dialog(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(24.0),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 58),
        height: 345,
        width: 328,
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/red-checker.png'),
              const SizedBox(height: 24),
              const Text(
                textAlign: TextAlign.center,
                'Password reset successfully ',
                style: TextStyle(color: primaryColor, fontSize: 19),
              ),
              const Text(
                textAlign: TextAlign.center,
                'Sign In into your account with your new password',
                style: TextStyle(fontSize: 13),
              ),
              const SizedBox(height: 24),
              MyButton(
                label: 'Sign In',
                backgroundColor: primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.signInScreen);
                },
                textColor: Colors.white,
                borderColor: primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
