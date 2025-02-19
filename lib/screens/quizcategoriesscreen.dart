import 'package:cybersecurity_quiz_awareness_app/screens/homescreen.dart';
import 'package:cybersecurity_quiz_awareness_app/widgets/category_card.dart';
import 'package:flutter/material.dart';

import 'quiz_intro_screen.dart';

class QuizCategoriesScreen extends StatelessWidget {
  static const routeName = '/quiz-categories';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD),
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
              icon: const Icon(Icons.arrow_back_ios_new),
              color: Colors.blueAccent.shade200,
            ),
            SizedBox(width: width * .02),
            Text(
              'Quiz Categories',
              style: TextStyle(
                fontSize: height * .025,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFFE3F2FD),
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.06),
        child: ListView(
          children: [
            CategoryCard(
              'assets/phishing_illus.jpg', // Replace with actual image asset
              'Phishing',
              0.7, // Progress value (70% completed)
              () {
                Navigator.pushNamed(
                  context,
                  QuizIntroductionScreen.routeName,
                  arguments: {
                    'categoryName': 'Phishing',
                    'description':
                        'Learn about phishing and how to protect yourself.',
                  },
                );
              },
            ),
            CategoryCard(
              'assets/phishing_illus.jpg', // Replace with actual image asset
              'Password Security',
              0.5, // Progress value (50% completed)
              () {
                Navigator.pushNamed(
                  context,
                  QuizIntroductionScreen.routeName,
                  arguments: {
                    'categoryName': 'Password security',
                    'description':
                        'Learn about Password and how to protect yourself.',
                  },
                );
                // Navigate to Quiz Introduction Screen
              },
            ),
            CategoryCard(
              'assets/phishing_illus.jpg', // Replace with actual image asset
              'Social Engineering',
              0.3, // Progress value (30% completed)
              () {
                Navigator.pushNamed(
                  context,
                  QuizIntroductionScreen.routeName,
                  arguments: {
                    'categoryName': 'Social Engineering',
                    'description':
                        'Learn about Social Engineering and how to protect yourself.',
                  },
                );
                // Navigate to Quiz Introduction Screen
              },
            ),
            CategoryCard(
              'assets/phishing_illus.jpg', // Replace with actual image asset
              'Ransomware',
              0.3, // Progress value (30% completed)
              () {
                Navigator.pushNamed(
                  context,
                  QuizIntroductionScreen.routeName,
                  arguments: {
                    'categoryName': 'Ransomware',
                    'description':
                        'Learn about Ransomware and how to protect yourself.',
                  },
                );
                // Navigate to Quiz Introduction Screen
              },
            ),
            CategoryCard(
              'assets/phishing_illus.jpg', // Replace with actual image asset
              'Malware',
              0.3, // Progress value (30% completed)
              () {
                Navigator.pushNamed(
                  context,
                  QuizIntroductionScreen.routeName,
                  arguments: {
                    'categoryName': 'Malware',
                    'description':
                        'Learn about malware and how to protect yourself.',
                  },
                );
                // Navigate to Quiz Introduction Screen
              },
            ),
            // Add more categories as needed
          ],
        ),
      ),
    );
  }
}
