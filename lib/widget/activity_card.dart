import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:school/screens/student_page.dart';

class ActivityCard extends StatelessWidget {
  final IconData icon;
  final String label;
  VoidCallback onTap;

  ActivityCard({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[200],
          child: GestureDetector(
            child: Icon(icon, size: 30, color: Colors.black),
            onTap: () {
              onTap;
            },
          ),
        ),
        SizedBox(height: 10),
        Text(label),
      ],
    );
  }
}
