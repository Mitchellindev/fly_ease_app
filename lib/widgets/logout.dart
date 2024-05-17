import 'package:flutter/material.dart';
import 'package:fly_ease_app/widgets/button_widget.dart';
import 'package:fly_ease_app/widgets/logout_success.dart';

class Logout extends StatelessWidget {
  const Logout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        width: 328,
        height: 252,
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              'Log Out?',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: primaryColor),
            ),
            const Text(
              'Oh! You are leaving? Are you sure you want to Log Out?',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            MyButton(
              label: 'Yes',
              backgroundColor: primaryColor,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: ((BuildContext context) {
                      return const LogoutSuccess();
                    }));
              },
              textColor: Colors.white,
              borderColor: primaryColor,
            ),
            const SizedBox(height: 26),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                'No, thanks',
                style: TextStyle(fontSize: 16, color: primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
