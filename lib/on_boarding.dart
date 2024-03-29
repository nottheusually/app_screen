
import 'package:app_screen/home_page.dart';
import 'package:app_screen/intro_screens/intro_screens_1.dart';
// import 'package:app_screen/intro_screens/intro_screens_1.dart';
import 'package:app_screen/intro_screens/intro_screens_2.dart';
import 'package:app_screen/intro_screens/intro_screens_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget { 
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> { 

  //controller to keep track of which page we're on
  PageController _controller = PageController();

  //track of if we're on the last page or not
bool onLastPage = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //page view
          PageView( 
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
        children: [
          IntroPage1(),
          IntroPage2(),
          IntroPage3()
        ],
      ),

      //dot indicator
      Container(
        alignment: Alignment(0, 0.90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                    //skip
                    GestureDetector(
                      onTap: (){
                        _controller.jumpToPage(2);
                      },

                      child: Text('Skip'),

                    ),

                   SmoothPageIndicator(controller: _controller, count: 3),

                   //next or done
                   onLastPage

                   ?GestureDetector(
                     onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      },
                    child: Text('Done'),
                   )

                   :GestureDetector(
                     onTap: (){
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                    child: Text('next'),
                   ),
                ],
              ),

      ),
        ],
      ),
    );
  }
}
