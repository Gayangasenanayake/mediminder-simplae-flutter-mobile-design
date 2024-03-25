import 'package:flutter/material.dart';
import 'package:medimeter/bmi.dart';
import 'package:medimeter/diabety.dart';
import 'package:medimeter/presure.dart';
import 'package:medimeter/profile.dart';
import 'package:medimeter/widgets/EventCard.dart';


class CheckHealthStatus extends StatefulWidget {
  @override
  _CheckHealthStatusState createState() => _CheckHealthStatusState();
}

class _CheckHealthStatusState extends State<CheckHealthStatus> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Mediminder'),
      ),
        backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50.0),
            // Event Cards
            EventCard(
              icon: Icons.local_hospital,
              cardColor:Colors.redAccent,
              title: 'Diabetey',
              description: 'Description',
              onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => Diabety()),
                 );
              },
              iconColor: Colors.redAccent,
            ),
            const SizedBox(height: 50.0),
            EventCard(
              cardColor:Colors.blueAccent,
              title: 'Pressure',
              description: 'Description',
              onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => const Presure()),
                 );
              },
              icon: Icons.trending_up,
              iconColor: Colors.blueAccent,
            ),
            const SizedBox(height: 50.0),
            EventCard(
              cardColor: Colors.black,
              title: 'BMI',
              description: 'Description',
              onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => const BMI()),
                 );
              },
              icon: Icons.accessibility,
              iconColor: Colors.black,
            ),
          ],
        ),
      ),

      // Profile Icon (Top Left)
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => const Profile()), // Corrected line
          );
        },
        child: const Icon(Icons.person),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
