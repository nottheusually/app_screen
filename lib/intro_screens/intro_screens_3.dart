import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/png/thanks.png'), // Replace with the correct path
              fit: BoxFit.cover, // You can adjust the fit as needed
            ),
          ),
        ),
        Container(
          color: Colors.transparent, // Set the background color to transparent
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Thank you once again for your trust and support. I look forward to continuing to learn from your experience and expertise.',
                  style: TextStyle(
                    color: Colors.black, // Set text color to solid blue
                    fontSize: 50.0, // Set font size to 12 pixels
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
