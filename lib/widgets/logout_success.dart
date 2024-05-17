import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/widgets/button_widget.dart';

class LogoutSuccess extends StatelessWidget {
  const LogoutSuccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return Dialog(
      child: Container(
          width: 328,
          height: 186,
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Text(
                'You are successfully logged out!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 14),
              MyButton(
                  label: 'Sign In',
                  backgroundColor: primaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.signInScreen);
                  },
                  textColor: Colors.white,
                  borderColor: primaryColor)
            ],
          )),
    );
  }
}
