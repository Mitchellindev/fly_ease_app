import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckingFlightDialog extends StatelessWidget {
  const CheckingFlightDialog({
    super.key,
    required this.primaryColor,
    required this.label,
  });

  final Color primaryColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 82),
        height: 341,
        child: Column(
          children: [
            Image.asset('assets/images/loading.png'),
            const SizedBox(height: 24),
            Text(
              'Checking for the best flight deals',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              label,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(161, 161, 161, 1),
              ),
            ),
            const Text(
              '1 Adult | Economy',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color.fromRGBO(161, 161, 161, 1)),
            ),
          ],
        ),
      ),
    );
  }
}
