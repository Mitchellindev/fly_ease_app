import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/widgets/button_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/flyease-logo.png',
              color: primaryColor,
            ),
            Image.asset('assets/images/welcome-image.png'),
            const SizedBox(height: 16),
            const Text(
              'You are Welcome!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              'Get access to member only deals, best price alerts and lots more.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            MyButton(
              label: 'Sign Up',
              backgroundColor: primaryColor,
              onPressed: () {
                Navigator.pushNamed(context, Routes.signUpScreen);
              },
              textColor: Colors.white,
              borderColor: primaryColor,
            ),
            const SizedBox(height: 16),
            MyButton(
              label: 'Sign In',
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, Routes.signInScreen);
              },
              textColor: primaryColor,
              borderColor: primaryColor,
            ),
          ],
        ),
      )),
    );
  }
}
