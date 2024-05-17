import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fly_ease_app/widgets/button_widget.dart';
import 'package:fly_ease_app/widgets/checking_flight_dialog.dart';
import 'package:fly_ease_app/widgets/select_airpot.dart';

class OneWayTrip extends StatefulWidget {
  const OneWayTrip({super.key});

  @override
  State<OneWayTrip> createState() => _OneWayTripState();
}

class _OneWayTripState extends State<OneWayTrip> {
  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      _dateController.text = picked.toString().split(' ')[0];
    }
  }

  final _dateController = TextEditingController();

  final List<String> _departureAirport = [
    'Cairo International Airport, Egypt',
    'Nnamdi Azikiwe Int’l Airport, Nigeria',
    'Tripoli International Airport, Lybia',
    'Kigali International Airport, Rwanda',
    'Cape Town Int’l Airport, South Africa',
  ];
  final List<String> _destinationAirport = [
    'Cairo International Airport, Egypt',
    'Nnamdi Azikiwe Int’l Airport, Nigeria',
    'Tripoli International Airport, Lybia',
    'Kigali International Airport, Rwanda',
    'Cape Town Int’l Airport, South Africa',
  ];
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SelectAirport(
                departureAirport: _departureAirport,
                primaryColor: primaryColor,
                label: 'From',
                hintText: 'Select a Departure Location',
              ),
              const SizedBox(height: 12),
              SelectAirport(
                departureAirport: _destinationAirport,
                primaryColor: primaryColor,
                label: 'To',
                hintText: 'Select a Destination Location',
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 70,
                color: const Color.fromRGBO(237, 244, 252, 1),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Departure Date',
                        style: TextStyle(
                          color: Color.fromRGBO(161, 161, 161, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          readOnly: true,
                          onTap: () {
                            _selectDate();
                          },
                          controller: _dateController,
                          decoration: const InputDecoration(
                            hintText: 'Pick a date',
                            contentPadding: EdgeInsets.only(bottom: 10),
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(161, 161, 161, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 70,
                color: const Color.fromRGBO(237, 244, 252, 1),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Passengers and Class',
                        style: TextStyle(
                          color: Color.fromRGBO(161, 161, 161, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          '1 Adult | Economy',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              MyButton(
                label: 'Find Flights',
                backgroundColor: primaryColor,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CheckingFlightDialog(
                          primaryColor: primaryColor,
                          label: _dateController.text,
                        );
                      });
                },
                textColor: Colors.white,
                borderColor: primaryColor,
              ),
              const SizedBox(height: 16),
              MyButton(
                label: 'Cancel',
                backgroundColor: Colors.white,
                onPressed: () {},
                textColor: primaryColor,
                borderColor: primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
