import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/images/png/story.png', // Replace with the correct path
              width: 150, // You can adjust the width as needed
            ),
            Text(
              'Your mentorship means a lot to me, and I am determined to make the most of it. I highly value the opportunities I have been given, and I want to assure you that I am taking them seriously. I am actively engaging with the material you have shared and am eager to put it into practice. I am also open to any additional resources or tasks you believe would help me in my learning journey.',
              style: TextStyle(
                fontSize: 15.0, // Set font size to 15 pixels
              ),
              textAlign: TextAlign.justify, // Justify the text
            ),
          ],
        ),
      ),
    );
  }
}
