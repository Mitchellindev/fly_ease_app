import 'package:flutter/material.dart';
import 'package:select_field/select_field.dart';

class SelectAirport extends StatelessWidget {
  const SelectAirport({
    super.key,
    required List<String> departureAirport,
    required this.primaryColor,
    required this.label,
    required this.hintText,
  }) : _departureAirport = departureAirport;

  final List<String> _departureAirport;
  final Color primaryColor;
  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      color: const Color.fromRGBO(237, 244, 252, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Color.fromRGBO(161, 161, 161, 1),
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            Expanded(
              child: SelectField(
                options: _departureAirport
                    .map((airport) => Option(label: airport, value: airport))
                    .toList(),
                menuDecoration: MenuDecoration(
                    textStyle: TextStyle(
                        decorationColor: primaryColor, color: Colors.black),
                    backgroundDecoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
                inputDecoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: const Color.fromRGBO(237, 244, 252, 1),
                  filled: true,
                  contentPadding: const EdgeInsets.only(bottom: 8),
                  hintText: hintText,
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(161, 161, 161, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
