import 'package:flutter/material.dart';

class ElevatedContainer extends StatelessWidget {
  ElevatedContainer(this.child, {super.key});
  Widget child;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        height: height * 0.6,
        width: width * 0.8,
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
        child: child,
      ),
    );
  }
}
