import 'package:cybersecurity_quiz_awareness_app/screens/homescreen.dart';
import 'package:flutter/material.dart';

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
        padding: EdgeInsets.all(width * 0.05),
        child: ListView(
          children: [
            _buildCategoryCard(
              context,
              'assets/phishing_illus.jpg', // Replace with actual image asset
              'Phishing',
              0.7, // Progress value (70% completed)
              () {
                // Navigate to Quiz Introduction Screen
              },
            ),
            _buildCategoryCard(
              context,
              'assets/phishing_illus.jpg', // Replace with actual image asset
              'Password Security',
              0.5, // Progress value (50% completed)
              () {
                // Navigate to Quiz Introduction Screen
              },
            ),
            _buildCategoryCard(
              context,
              'assets/phishing_illus.jpg', // Replace with actual image asset
              'Social Engineering',
              0.3, // Progress value (30% completed)
              () {
                // Navigate to Quiz Introduction Screen
              },
            ),
            _buildCategoryCard(
              context,
              'assets/phishing_illus.jpg', // Replace with actual image asset
              'Ransomware',
              0.3, // Progress value (30% completed)
              () {
                // Navigate to Quiz Introduction Screen
              },
            ),
            _buildCategoryCard(
              context,
              'assets/phishing_illus.jpg', // Replace with actual image asset
              'Malware',
              0.3, // Progress value (30% completed)
              () {
                // Navigate to Quiz Introduction Screen
              },
            ),
            // Add more categories as needed
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, String imagePath,
      String title, double progress, VoidCallback onTap) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(height * 0.02),
      ),
      child: Padding(
        padding: EdgeInsets.all(height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  imagePath,
                  height: height * 0.05,
                  width: width * 0.1,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: width * 0.05),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: height * 0.025,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey.shade300,
              color: Colors.blueAccent.shade100,
              minHeight: height * 0.01,
            ),
            SizedBox(height: height * 0.02),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(height * 0.02),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.1,
                    vertical: height * 0.015,
                  ),
                  backgroundColor: Colors.blueAccent.shade100,
                ),
                child: Text(
                  'Start Quiz',
                  style: TextStyle(
                    fontSize: height * 0.02,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
