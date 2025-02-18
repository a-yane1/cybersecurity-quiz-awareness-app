import 'dart:async';
import 'onboardingscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to Onboarding after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnboardingScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    //height for responsiveness
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white24, // Light-themed background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/csqa_logo.png', // Replace with your app logo
              height: height * .17,
            ),
            SizedBox(height: height * .02),
            Text(
              'CyberShield Quiz',
              style: TextStyle(
                fontSize: height * .02,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
