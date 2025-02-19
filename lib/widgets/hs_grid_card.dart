import 'package:flutter/material.dart';

class HomeScreenGridCard extends StatelessWidget {
  HomeScreenGridCard(this.imagePath, this.title, this.onTap, {super.key});
  String imagePath;
  String title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height * 0.02),
        ),
        child: Padding(
          padding: EdgeInsets.all(height * 0.007),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: height * 0.1,
                width: width * 0.2,
                fit: BoxFit.cover,
              ),
              SizedBox(height: height * 0.02),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
