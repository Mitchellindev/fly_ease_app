import 'package:flutter/material.dart';
import 'package:fly_ease_app/widgets/multi_trip.dart';
import 'package:fly_ease_app/widgets/one_way_trip.dart';
import 'package:fly_ease_app/widgets/round_trip.dart';
import 'package:fly_ease_app/widgets/tab_button.dart';

class Flights extends StatefulWidget {
  const Flights({super.key});

  @override
  State<Flights> createState() => _FlightsState();
}

class _FlightsState extends State<Flights> {
  // int _isSelected = 0;
  List<Widget> tabPages = const [
    OneWayTrip(),
    RoundTrip(),
    MultiTrip(),
  ];
  @override
  Widget build(BuildContext context) {
    // const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: TabButton(
                  label: 'ONE WAY',
                ),
              ),
              Tab(
                icon: TabButton(
                  label: 'ROUND TRIP',
                ),
              ),
              Tab(
                icon: TabButton(
                  label: 'MULTI - TRIP',
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            OneWayTrip(),
            RoundTrip(),
            MultiTrip(),
          ],
        ),
      ),
    );
  }
}
