import 'package:flutter/material.dart';

class DealsCard extends StatelessWidget {
  const DealsCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
  });

  final String title;
  final String subtitle;
  final String image;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return Container(
      width: 382,
      height: 150,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(24))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16, color: primaryColor),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 11),
              ),
            ],
          ),
          Image.asset(image)
        ],
      ),
    );
  }
}
