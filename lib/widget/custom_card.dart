import 'package:flutter/material.dart';
import 'package:school/screens/login_page.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.imageIcon,
    required this.club,
    required this.scale,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  String imageIcon;
  String club;
  double scale;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 130,
          height: 60,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(.2),
                spreadRadius: 10,
                offset: Offset(10, 10))
          ]),
          child: GestureDetector(
            onTap: onTap,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.only(left: 14, right: 0, top: 8),
                child: Text(
                  club,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: -20,
          top: -60,
          child: Image.asset(
            scale: scale,
            imageIcon,
            height: 100,
            width: 100,
          ),
        )
      ],
    );
  }
}
