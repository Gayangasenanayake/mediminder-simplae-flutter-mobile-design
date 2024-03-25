import 'package:flutter/material.dart';
import 'package:medimeter/profile.dart';
import 'package:medimeter/widgets/labledTextField.dart';

class Diabety extends StatefulWidget {
  const Diabety({super.key});

  @override
  _DiabetyState createState() => _DiabetyState();
}

class _DiabetyState extends State<Diabety> {
  final TextEditingController _sugarLevelController = TextEditingController();
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
              Container(
                width: 300, // Adjust the width as needed
                child: LabeledTextField(
                  label: 'Suger Level',
                  hintText: 'Enter your sugar level',
                  controller: _sugarLevelController,
                ),
              ),
              const SizedBox(height: 20.0), // Add spacing

              // Submit and Clear Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle the submit button press
                    },
                    child: const Text('Submit'),
                  ),
                  const SizedBox(width: 16.0), // Add spacing
                  ElevatedButton(
                    onPressed: () {
                      // Handle the clear button press
                      // Clear the text field or perform other actions
                    },
                    child: const Text('Clear'),
                  ),
                ],
              ),

              // Labels under the buttons
              const SizedBox(height: 20.0), // Add spacing
              Text('Suger Level:'),
              Text('Insulin Dosage:'),
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
