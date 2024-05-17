import 'package:flutter/material.dart';

class IntroScreenone extends StatelessWidget {
  const IntroScreenone({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Image.asset('assets/images/intro-image-one.png'),
            const SizedBox(height: 100),
            const Text(
              'Your travel search engine',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              'We have a whole new experience for you',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      )),
    );
  }
}
