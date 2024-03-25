import 'package:flutter/material.dart';
import 'package:medimeter/more.dart';
import 'package:medimeter/widgets/cutomRadioButton.dart';
import 'package:medimeter/widgets/imageViewer.dart';
import 'package:medimeter/widgets/labledTextField.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

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
              Text('Profile'),
              const SizedBox(height: 20.0),
              ImagePreviewer(
                imageUrl: 'lib/images/index.jpg', // Replace with your image URL
              ),
              const SizedBox(height: 20.0), // Add spacing

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
                      label: 'Name',
                      hintText: 'Enter your name',
                      controller: _nameController,
                    ),

                    const SizedBox(height: 20.0),
                    
                    LabeledTextField(
                      label: 'Email',
                      hintText: 'Enter your email',
                      controller: _emailController,
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
                    child: const Text('Save'),
                  ),

                  const SizedBox(width: 16.0), // Add spacing
                  
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const More()),
                 );
                    },
                    child: const Text('more'),
                  ),

                  const SizedBox(width: 16.0),

                  ElevatedButton(
                    onPressed: () {
                      // Handle the clear button press
                      // Clear the text field or perform other actions
                    },
                    child: const Text('edit'),
                  ),
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
          // Open the profile details side page
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
