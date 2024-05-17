import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/screens/payment_screen.dart';
import 'package:fly_ease_app/screens/check_email.dart';
import 'package:fly_ease_app/screens/flight_deals_screen.dart';
import 'package:fly_ease_app/screens/flight_details_screen.dart';
import 'package:fly_ease_app/screens/forgot_password_screen.dart';
import 'package:fly_ease_app/screens/home_screen.dart';
import 'package:fly_ease_app/screens/passenger_details_screen.dart';
import 'package:fly_ease_app/screens/reset_password.dart';
import 'package:fly_ease_app/screens/sign_in.dart';
import 'package:fly_ease_app/screens/sign_up.dart';
import 'package:fly_ease_app/screens/splash_screen.dart';
import 'package:fly_ease_app/screens/welcome_screen.dart';
import 'package:fly_ease_app/widgets/flights.dart';

class AppRouter {
  Route onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.welcomeScreen:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => SignUpScreen(),
        );
      case Routes.signInScreen:
        return MaterialPageRoute(
          builder: (_) => SignInScreen(),
        );
      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ForgotPasswordScreen(),
        );
      case Routes.checkEmailScreen:
        return MaterialPageRoute(
          builder: (_) => const CheckEmailScreen(),
        );

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ResetPasswordScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreeen(),
        );
      case Routes.flightScreen:
        return MaterialPageRoute(
          builder: (_) => const Flights(),
        );
      case Routes.flightDealsScreen:
        return MaterialPageRoute(
          builder: (_) => const FlightDealsScreen(),
        );
      case Routes.flightDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const FlightDetailsScreen(),
        );
      case Routes.passengerDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const PassengerDetailsScreen(),
        );
      case Routes.paymentScreen:
        return MaterialPageRoute(
          builder: (_) => const PaymentScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Text("Hi"),
        );
    }
  }
}
