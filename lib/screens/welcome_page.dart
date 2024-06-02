import 'package:flutter/material.dart';
import 'package:school/widget/custom_card.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  static String id = 'WelcomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff004845), Color(0xff999999)])),
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset('assets/images/log.png'),
          SizedBox(
            height: 10,
          ),
          Text(
            'Please, choose your club..',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomCard(
                        imageIcon: 'assets/images/parent.png',
                        scale: 1,
                        club: ' Parent'),
                    SizedBox(
                      height: 40,
                    ),
                    CustomCard(
                        imageIcon: 'assets/images/students.png',
                        scale: 1,
                        club: 'Student'),
                  ],
                ),
                Column(
                  children: [
                    CustomCard(
                        imageIcon: 'assets/images/admin.png',
                        scale: 1,
                        club: ' Admin'),
                    SizedBox(
                      height: 40,
                    ),
                    CustomCard(
                        imageIcon: 'assets/images/staff.png',
                        scale: 1,
                        club: '  Staff'),
                  ],
                ),

                // Left card with two buttons
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}