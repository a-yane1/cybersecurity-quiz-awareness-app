import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard(this.imagePath, this.title, this.progress, this.onTap,
      {super.key});
  String imagePath;
  String title;
  double progress;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(height * 0.02),
      ),
      child: Padding(
        padding: EdgeInsets.all(height * 0.03),
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
