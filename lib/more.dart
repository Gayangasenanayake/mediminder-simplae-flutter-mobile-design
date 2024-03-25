import 'package:flutter/material.dart';
import 'package:medimeter/widgets/checkBoxSet.dart';
import 'package:medimeter/widgets/labledTextField.dart';

class More extends StatefulWidget {
  const More({Key? key});

  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

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
                      label: 'Age',
                      hintText: 'Enter your age',
                      controller: _ageController,
                    ),

                    const SizedBox(height: 20.0),

                    LabeledTextField(
                      label: 'Gender',
                      hintText: 'Enter you are male/female(M/F)',
                      controller: _genderController,
                    ),

                    const SizedBox(height: 20.0),

                    LabeledTextField(
                      label: 'DOB',
                      hintText: 'Enter your birthday',
                      controller: _dobController,
                    ),

                    const SizedBox(height: 20.0),

                    LabeledTextField(
                      label: 'Address',
                      hintText: 'Enter your address',
                      controller: _addressController,
                    ),

                    const SizedBox(height: 20.0),
                    Text('Health status'),

                    CustomCheckbox(
                      label: 'Pressure',
                      initialValue: true, // Set your initial value here
                      onChanged: (value) {
                            print('Checkbox state: $value');
                            },
                            ),
                    CustomCheckbox(
                      label: 'Diabetey',
                      initialValue: true, // Set your initial value here
                      onChanged: (value) {
                            print('Checkbox state: $value');
                            },
                            )
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
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),

      // Profile Icon (Top Left)
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.pink,
      //   onPressed: () {
      //     // Open the profile details side page
      //   },
      //   child: const Icon(Icons.person),
      // ),

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
