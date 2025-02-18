import 'package:cybersecurity_quiz_awareness_app/screens/authscreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'home_screen.dart'; // Import the home screen

class OnboardingScreen extends StatefulWidget {
  static const routeName = '/onboarding';

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/phishing_illus.jpg",
      "title": "Stay Secure Online",
      "subtitle": "Learn how to protect yourself from cyber threats."
    },
    {
      "image": "assets/quiz_img.jpg",
      "title": "Test Your Knowledge",
      "subtitle": "Take quizzes and improve your cybersecurity skills."
    },
    {
      "image": "assets/reward_img.jpg",
      "title": "Earn Achievements",
      "subtitle": "Get rewarded for learning and staying secure."
    }
  ];

  void _nextPage() {
    if (_currentPage < onboardingData.length - 1) {
      _controller.nextPage(
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeInOut);
    } else {
      Navigator.pushReplacementNamed(context, AuthScreen.routeName);
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _controller.previousPage(
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD), // Light blue background
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.06, right: width * 0.05),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () => Navigator.pushReplacementNamed(
                    context, AuthScreen.routeName),
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: height * 0.02,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.scale(
                        scale: 1.05, // Slight pop-out effect
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                onboardingData[index]["image"]!,
                                height: height * 0.3,
                              ),
                              SizedBox(height: height * 0.03),
                              Text(
                                onboardingData[index]["title"]!,
                                style: TextStyle(
                                    fontSize: height * 0.03,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: height * 0.015),
                              Text(
                                onboardingData[index]["subtitle"]!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: height * 0.02,
                                    color: Colors.grey[700]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: onboardingData.length,
            effect:
                const ExpandingDotsEffect(activeDotColor: Colors.blueAccent),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.04, horizontal: width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _currentPage > 0
                    ? ElevatedButton(
                        onPressed: _previousPage,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.1,
                              vertical: height * 0.015),
                          backgroundColor: Colors.white,
                        ),
                        child: Text("Back",
                            style: TextStyle(
                                fontSize: height * 0.02,
                                color: Colors.blueAccent)),
                      )
                    : const SizedBox.shrink(),
                ElevatedButton(
                  onPressed: _nextPage,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.1, vertical: height * 0.015),
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: Text(
                    _currentPage == onboardingData.length - 1
                        ? "Get Started"
                        : "Next",
                    style:
                        TextStyle(fontSize: height * 0.02, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
