import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/widgets/flight_deals_card_widget.dart';

class FlightDealsScreen extends StatelessWidget {
  const FlightDealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(199, 221, 246, 1),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_left,
            size: 30,
          ),
        ),
        title: const Column(
          children: [
            Text(
              'Nigeria - Egypt',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Sat, 18 Nov, 1 Adult',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(118, 118, 118, 1),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                const Text(
                  '5 Result(s)',
                  style: TextStyle(fontSize: 16, color: primaryColor),
                ),
                const SizedBox(height: 24),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.flightDetailsScreen);
                    },
                    child: const FlightDealsCard()),
                const SizedBox(height: 16),
                const FlightDealsCard(),
                const SizedBox(height: 16),
                const FlightDealsCard(),
                const SizedBox(height: 16),
                const FlightDealsCard(),
                const SizedBox(height: 16),
                const FlightDealsCard(),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
