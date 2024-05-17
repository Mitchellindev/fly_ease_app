import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/screens/intro_screen_one.dart';
import 'package:fly_ease_app/screens/intro_screen_three.dart';
import 'package:fly_ease_app/screens/intro_screen_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(74, 144, 226, 1);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            //pageview
            PageView(
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: const [
                IntroScreenone(),
                IntroScreenTwo(),
                IntroScreenThree(),
              ],
            ),

            //dot indicators
            Container(
              alignment: const Alignment(0, 0.85),
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 20),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const WormEffect(
                      activeDotColor: primaryColor,
                    ),
                  ),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.welcomeScreen);
                          },
                          child: const Text(
                            'Done',
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const Text('Next'),
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
