import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/widgets/button_widget.dart';
import 'package:fly_ease_app/widgets/flight_details_card.dart';

class FlightDetailsScreen extends StatelessWidget {
  const FlightDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(199, 221, 246, 1),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_left,
              size: 30,
            )),
        centerTitle: true,
        title: const Text(
          'Flight Details',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ABJ - CAR',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 14),
              const FlightDetails(primaryColor: primaryColor),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromRGBO(235, 235, 235, 1),
                ),
                child: const Text(
                  '₦2,244,047',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              MyButton(
                label: 'Continue Booking',
                backgroundColor: primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.passengerDetailsScreen);
                },
                textColor: Colors.white,
                borderColor: primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
