import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);
    const hintColor = Color.fromRGBO(161, 161, 161, 1);

    const border = OutlineInputBorder(
      borderSide: BorderSide(
          color: primaryColor,
          width: 1.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside),
      borderRadius: BorderRadius.all(
        Radius.circular(12.0),
      ),
    );
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: const Color.fromRGBO(237, 244, 252, 1),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: hintColor,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
        focusedBorder: border,
        enabledBorder: border,
        filled: true,
      ),
    );
  }
}
