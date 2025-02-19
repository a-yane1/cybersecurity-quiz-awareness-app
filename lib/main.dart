import 'package:cybersecurity_quiz_awareness_app/screens/authscreen.dart';
import 'package:cybersecurity_quiz_awareness_app/screens/homescreen.dart';
import 'package:cybersecurity_quiz_awareness_app/screens/quiz_intro_screen.dart';
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
      home: HomeScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == QuizIntroductionScreen.routeName) {
          final args = settings.arguments as Map<String, String>;
          return MaterialPageRoute(
            builder: (context) {
              return QuizIntroductionScreen(
                categoryName: args['categoryName']!,
                description: args['description']!,
              );
            },
          );
        }
        // Add other routes here if needed
        return null;
      },
      routes: {
        OnboardingScreen.routeName: (context) => OnboardingScreen(),
        AuthScreen.routeName: (context) => AuthScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        QuizCategoriesScreen.routeName: (context) => QuizCategoriesScreen(),
      },
    );
  }
}
