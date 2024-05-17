import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/widgets/deals_widget.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi Sarah',
                      style: TextStyle(fontSize: 24, color: primaryColor),
                    ),
                    Text(
                      'Make your bookings',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Color.fromRGBO(199, 221, 246, 1),
                      child: Icon(Icons.person),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.notifications)
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.flightScreen);
                  },
                  child: const DealsCard(
                    title: 'Flight',
                    subtitle: 'Get the best seats',
                    image: 'assets/images/Welcome aboard.png',
                    backgroundColor: Color.fromRGBO(237, 244, 252, 1),
                  ),
                ),
                const SizedBox(height: 24),
                const DealsCard(
                  title: 'Deals',
                  subtitle: 'Get the best deals',
                  image: 'assets/images/international-trade.png',
                  backgroundColor: Color.fromRGBO(199, 221, 246, 1),
                ),
                const SizedBox(height: 24),
                const DealsCard(
                  title: 'Explore',
                  subtitle: 'Let’s find your best flight',
                  image: 'assets/images/flight-booking.png',
                  backgroundColor: Color.fromRGBO(237, 244, 252, 1),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
          Container(
            color: const Color.fromRGBO(199, 221, 246, 1),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Today’s Deals',
                    style: TextStyle(fontSize: 24, color: primaryColor),
                  ),
                  const Text(
                    'Flight Deals',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.flightDealsScreen);
                    },
                    child: Container(
                      height: 313,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(172, 204, 242, 1),
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ABJ ➜',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'CAR',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                    'assets/images/british-airways.png'),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Image.asset(
                              'assets/images/london.jpg',
                              width: double.infinity,
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
