import 'package:cybersecurity_quiz_awareness_app/widgets/elevated_body_container.dart';
import 'package:flutter/material.dart';

class QuizIntroductionScreen extends StatelessWidget {
  static const routeName = '/quiz-introduction';

  final String categoryName;
  final String description;

  QuizIntroductionScreen(
      {required this.categoryName, required this.description});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD),
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: height * 0.02),
          child: Text(
            '$categoryName Quiz',
            style: TextStyle(
              fontSize: height * 0.03,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        backgroundColor: const Color(0xFFE3F2FD),
      ),
      body: ElevatedContainer(
        Padding(
          padding: EdgeInsets.all(width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoryName,
                style: TextStyle(
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.02),
              Text(
                description,
                style: TextStyle(
                  fontSize: height * 0.022,
                ),
              ),
              SizedBox(height: height * 0.04),
              Text(
                'Rules:',
                style: TextStyle(
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.02),
              Text(
                '1. Timer: You have a limited time to complete the quiz.',
                style: TextStyle(
                  fontSize: height * 0.022,
                ),
              ),
              Text(
                '2. Score Calculation: Your score will be calculated based on the number of correct answers.',
                style: TextStyle(
                  fontSize: height * 0.022,
                ),
              ),
              // Add more rules as needed
              Spacer(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the quiz screen
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 0.02),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.2,
                      vertical: height * 0.015,
                    ),
                    backgroundColor: Colors.blueAccent.shade200,
                  ),
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: height * 0.025,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
