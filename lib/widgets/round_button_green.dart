import 'package:flutter/material.dart';

class RoundButtonGreen extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  bool loading;
  // Constructor with a required title parameter
  RoundButtonGreen(
      {Key? key,
      required this.title,
      required this.onTap,
      this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.green, // Set the background color directly
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  strokeWidth: 3,
                  color: Colors.white,
                )
              : Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                  ),

                  // Set the text color to contrast with the background
                ),
        ),
      ),
    );
  }
}
