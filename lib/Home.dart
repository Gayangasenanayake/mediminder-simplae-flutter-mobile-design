// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:medimeter/check_health_status.dart';
import 'package:medimeter/profile.dart';
import 'package:medimeter/reminders.dart';
import 'package:medimeter/widgets/EventCard.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

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
              icon: Icons.favorite,
              cardColor:Colors.greenAccent,
              title: 'Check health status',
              description: 'Description',
              onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => CheckHealthStatus()),
                 );
                  },
              iconColor: Colors.greenAccent,
            ),
            const SizedBox(height: 50.0),
            EventCard(
              cardColor:Colors.blueAccent,
              title: 'Set Reminders',
              description: 'Description',
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const reminder()),);
              }, icon: Icons.access_alarm,
              iconColor: Colors.blueAccent,
            ),
            const SizedBox(height: 50.0),
            EventCard(
              cardColor: Colors.orangeAccent,
              title: 'Diat plans',
              description: 'Description',
              onPressed: () {
                // Handle event button 3
              }, icon: Icons.local_dining,
              iconColor: Colors.orangeAccent,
            ),
          ],
        ),
      ),

      // Profile Icon (Top Left)
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => const Profile()),
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
