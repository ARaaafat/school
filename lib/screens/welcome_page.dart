import 'package:flutter/material.dart';
import 'package:school/screens/student_page.dart';
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
                      club: ' Parent',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomCard(
                      imageIcon: 'assets/images/students.png',
                      scale: 1,
                      club: 'Student',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StudentPage()));
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomCard(
                      imageIcon: 'assets/images/admin.png',
                      scale: 1,
                      club: ' Admin',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomCard(
                      imageIcon: 'assets/images/staff.png',
                      scale: 1,
                      club: '  Staff',
                      onTap: () {},
                    ),
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
