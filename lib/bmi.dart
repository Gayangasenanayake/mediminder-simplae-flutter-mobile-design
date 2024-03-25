import 'package:flutter/material.dart';
import 'package:medimeter/profile.dart';
import 'package:medimeter/widgets/cutomRadioButton.dart';
import 'package:medimeter/widgets/labledTextField.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key});

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  int _currentIndex = 0;
  bool _isMaleSelected = true; // Initially, the "Male" option is selected

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
              // Radio Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 16.0),
                  CustomRadioButton(
                    label: 'Male',
                    isSelected: _isMaleSelected,
                    onTap: () {
                      setState(() {
                        _isMaleSelected = true;
                      });
                    },
                  ),
                  const SizedBox(width: 16.0),
                  CustomRadioButton(
                    label: 'Female',
                    isSelected: !_isMaleSelected,
                    onTap: () {
                      setState(() {
                        _isMaleSelected = false;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // LabeledTextField centered and reduced width
              Container(
                width: 300, // Adjust the width as needed
                child: Column(
                  children: [
                    LabeledTextField(
                      label: 'Input height',
                      hintText: 'Enter your Height',
                      controller: _heightController,
                    ),
                    LabeledTextField(
                      label: 'Input weight',
                      hintText: 'Enter your weight',
                      controller: _weightController,
                    ),
                  ],
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
              Text('BMI:'),
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
