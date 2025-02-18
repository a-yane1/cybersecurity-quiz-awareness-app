import 'package:cybersecurity_quiz_awareness_app/screens/authscreen.dart';
import 'package:cybersecurity_quiz_awareness_app/screens/homescreen.dart';
import 'package:cybersecurity_quiz_awareness_app/screens/quizcategoriesscreen.dart';
import 'package:flutter/material.dart';

import 'screens/onboardingscreen.dart';
import 'screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        OnboardingScreen.routeName: (context) => OnboardingScreen(),
        AuthScreen.routeName: (context) => AuthScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        QuizCategoriesScreen.routeName: (context) => QuizCategoriesScreen(),
      },
    );
  }
}
