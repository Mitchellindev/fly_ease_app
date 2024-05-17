import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return Container(
      margin: const EdgeInsets.only(bottom: 3),
      child: ElevatedButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          elevation: 0,
          foregroundColor: primaryColor,
          backgroundColor: Colors.white,
          minimumSize: const Size(120, 40),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(
                  color: primaryColor, style: BorderStyle.solid)),
        ),
        onPressed: () {},
        child: Text(
          label,
          style: const TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}
