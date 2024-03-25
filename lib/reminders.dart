import 'package:flutter/material.dart';
import 'package:medimeter/profile.dart';
import 'package:medimeter/setReminder.dart';

class reminder extends StatefulWidget {
  const reminder({super.key});

  @override
  _reminderState createState() => _reminderState();
}

class _reminderState extends State<reminder> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Mediminder'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // LabeledTextField centered and reduced width
              // ignore: sized_box_for_whitespace
              Container(
                width: 300, // Adjust the width as needed
                child: const Text(
                  'Welcome to set Reminder',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0, // Adjust the font size as needed
                    fontWeight: FontWeight.bold, // Make it bold for emphasis
                  ),
                ),
              ),
              const SizedBox(height: 20.0), // Add spacing
              const Center(
                child: Text('No medicine'),
                ),
              // Submit and Clear Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const SetReminder()),);
                    },
                    child: const Text('Add'),
                  ),
                  const SizedBox(width: 16.0), // Add spacing
                ],
              ),

              // Labels under the buttons
              const SizedBox(height: 20.0), // Add spacing
              
            ],
          ),
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
