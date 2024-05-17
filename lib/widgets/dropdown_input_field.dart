import 'package:flutter/material.dart';
import 'package:select_field/select_field.dart';

class DropDownInputField extends StatelessWidget {
  const DropDownInputField({
    super.key,
    required List<String> genderList,
  }) : _genderList = genderList;

  final primaryColor = const Color.fromRGBO(74, 144, 226, 1);

  final List<String> _genderList;
  final border = const OutlineInputBorder(
    borderSide: BorderSide(
        color: Color.fromRGBO(74, 144, 226, 1),
        width: 1.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside),
    borderRadius: BorderRadius.all(
      Radius.circular(12.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SelectField(
      menuDecoration: MenuDecoration(
          textStyle:
              TextStyle(decorationColor: primaryColor, color: primaryColor),
          backgroundDecoration: const BoxDecoration(
            color: Colors.white,
          )),
      inputDecoration: InputDecoration(
        fillColor: const Color.fromRGBO(237, 244, 252, 1),
        hintText: 'Gender',
        hintStyle: const TextStyle(
          color: Color.fromRGBO(161, 161, 161, 1),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
        focusedBorder: border,
        enabledBorder: border,
        filled: true,
      ),
      options: _genderList
          .map((gender) => Option(label: gender, value: gender))
          .toList(),
    );
  }
}
