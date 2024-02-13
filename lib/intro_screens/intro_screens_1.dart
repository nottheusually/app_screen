import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/png/welcome.png'), // Replace with the correct path
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
                  'welcome to my first flutter app ',
                  style: TextStyle(
                    color: Colors.green, // Set text color to solid blue
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
