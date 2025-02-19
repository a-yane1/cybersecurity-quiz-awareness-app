import 'package:cybersecurity_quiz_awareness_app/screens/quizcategoriesscreen.dart';
import 'package:cybersecurity_quiz_awareness_app/widgets/hs_grid_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD),
      appBar: AppBar(
        title: Text(
          'Welcome, Foye!',
          style: TextStyle(
            fontSize: height * .026,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFFE3F2FD),
        actions: [
          IconButton(
            icon: Icon(Icons.settings,
                size: height * 0.032, color: Colors.blueGrey),
            onPressed: () {
              // Navigate to settings screen
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: height * .75,
            left: width * .1,
            right: width * .1,
            child: Card(
              elevation: height * .05,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Ready to test your security Knowlegde?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: height * .025,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.2,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: height * 0.8,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    height * .07,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05,
                  vertical: height * 0.06,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: width * 0.05,
                        mainAxisSpacing: height * 0.04,
                        children: [
                          HomeScreenGridCard(
                            'assets/quiz_img.jpg', // Replace with actual image asset
                            'Quiz Categories',
                            () {
                              Navigator.of(context).pushReplacementNamed(
                                  QuizCategoriesScreen.routeName);
                            },
                          ),
                          HomeScreenGridCard(
                            'assets/quiz_img.jpg', // Replace with actual image asset
                            'Quick Quiz',
                            () {
                              // Navigate to Random questions (time-based challenge)
                            },
                          ),
                          HomeScreenGridCard(
                            'assets/reward_img.jpg', // Replace with actual image asset
                            'Achievements',
                            () {
                              // Navigate to Achievements
                            },
                          ),
                          HomeScreenGridCard(
                            'assets/settings.jpg', // Replace with actual image asset
                            'Settings',
                            () {
                              // Navigate to Last Attempted Quiz
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    GestureDetector(
                      onTap: () {
                        // Navigate to Last Attempted Quiz
                      },
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(height * 0.02),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(height * 0.015),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/quiz_img.jpg', // Replace with actual image asset
                                height: height * 0.05,
                                width: width * 0.1,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: width * 0.05),
                              Text(
                                'Last Attempted Quiz',
                                style: TextStyle(
                                  fontSize: height * 0.025,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
