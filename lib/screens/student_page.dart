import 'package:flutter/material.dart';
import 'package:school/screens/my_profile_page.dart';
import 'package:school/widget/activity_card.dart';

class StudentPage extends StatefulWidget {
  static String id = 'StudentPage';

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 135, 192, 178),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: GestureDetector(
              child: Icon(Icons.person, color: Colors.white),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfilePage()));
              },
            ),
          ),
        ),
        title: Text('Hi, Student Name'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedFontSize: 15,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        backgroundColor: Color.fromARGB(255, 135, 192, 178),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Services'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row(
            //   children: [
            //     Text('21120068', style: TextStyle(color: Colors.orange)),
            //   ],
            // ),
            SizedBox(height: 20),
            Text('Activities',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ActivityCard(
                    icon: Icons.assessment, label: 'Results', onTap: () {}),
                ActivityCard(
                    icon: Icons.schedule, label: 'Schedule', onTap: () {}),
                ActivityCard(
                    icon: Icons.bar_chart, label: 'Statistics', onTap: () {})
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Text('Tuesday',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('11 Jun'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child:
                      Text('My Schedule', style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Text(
                  'No Classes Today',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
