import 'package:flutter/material.dart';
import 'package:medimeter/profile.dart';
import 'package:medimeter/widgets/labledTextField.dart';

class Presure extends StatefulWidget {
  const Presure({super.key});

  @override
  _PresureyState createState() => _PresureyState();
}

class _PresureyState extends State<Presure> {
  final TextEditingController _pressureLevelController = TextEditingController();
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
                  label: 'Pressure Level',
                  hintText: 'Enter your Pressure level',
                  controller: _pressureLevelController,
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
              Text('Pressure Level:'),
              Text('Meet doctor:'),
            ],
          ),
        ),
      ),

      // Profile Icon (Top Left)
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => const Profile()),);
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
