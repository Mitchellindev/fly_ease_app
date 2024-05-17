import 'package:flutter/material.dart';

class FlightDetails extends StatelessWidget {
  const FlightDetails({
    super.key,
    required this.primaryColor,
  });

  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
        vertical: 23,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(199, 221, 246, 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                textAlign: TextAlign.end,
                'Fri, Nov 18',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(118, 118, 118, 1),
                ),
              ),
              Text(
                textAlign: TextAlign.end,
                'Sat, Nov 19',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(118, 118, 118, 1),
                ),
              ),
            ],
          ),
          Container(
            height: 254,
            width: 1,
            color: const Color.fromRGBO(255, 99, 71, 1),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '23:00  Abuja (Nnamdi  Azikiwe International  Airport',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'United Airlines  Economy Class',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(118, 118, 118, 1),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.business_center_sharp,
                        color: Color.fromRGBO(255, 99, 71, 1),
                        size: 20,
                      ),
                      SizedBox(width: 3),
                      Text(
                        '2 Bag(s)',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 99, 71, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text('05:50  Cairo (Cairo  International Airport)')
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/british-airways.png',
                width: 32,
                height: 32,
              ),
              Text(
                '5hrs 50m',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
