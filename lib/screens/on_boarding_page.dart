import 'package:flutter/material.dart';

import 'package:school/screens/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = index == 2;
              });
            },
            children: [
              buildPage(
                color: Color.fromARGB(77, 150, 182, 145),
                image: 'assets/icons/wallet.png',
                title: 'Smart pocket money',
                subtitle: 'Simple service for our childeren!',
              ),
              buildPage(
                color: Color.fromARGB(77, 150, 182, 145),
                image: 'assets/images/google.png',
                title: 'Easy Transfer',
                subtitle: '',
              ),
              buildPage(
                color: Color.fromARGB(77, 150, 182, 145),
                image: 'assets/images/parent.png',
                title: 'Easy Pay',
                subtitle: 'Get started with using the app!',
              ),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text('Skip'),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    type: WormType.thin,
                    activeDotColor: Colors.deepPurple,
                  ),
                ),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginPage()));
                          // Navigate to home screen or login
                        },
                        child: Text('Done'),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text('Next'),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPage(
      {required Color color,
      required String image,
      required String title,
      required String subtitle}) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              subtitle,
              style: TextStyle(
                color: Color.fromARGB(255, 129, 127, 127),
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
