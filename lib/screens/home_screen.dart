import 'package:flutter/material.dart';
import 'package:fly_ease_app/widgets/bookings.dart';
import 'package:fly_ease_app/widgets/favorites.dart';
import 'package:fly_ease_app/widgets/flights.dart';
import 'package:fly_ease_app/widgets/home_content.dart';
import 'package:fly_ease_app/widgets/profile.dart';

class HomeScreeen extends StatefulWidget {
  const HomeScreeen({super.key});

  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    HomeContent(),
    Flights(),
    Bookings(),
    Favorites(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: const Color.fromRGBO(161, 161, 161, 1),
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.flight_takeoff,
              ),
              label: 'Flights'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/booking.png'),
              label: 'Bookings'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favorites'),
          const BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 13,
                backgroundColor: Color.fromRGBO(161, 161, 161, 1),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              label: 'Profile'),
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}
