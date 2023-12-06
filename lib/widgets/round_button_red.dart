import 'package:flutter/material.dart';

class RoundButtonRed extends StatelessWidget {
  final String title;

  // Constructor with a required title parameter
  const RoundButtonRed({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.red, // Set the background color directly
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors
                  .white), // Set the text color to contrast with the background
        ),
      ),
    );
  }
}
