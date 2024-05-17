import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/app_route.dart';
import 'package:fly_ease_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp(
      onGenerateRoute: appRouter.onGeneratedRoute,
      title: 'flyese',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(74, 144, 226, 1),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
