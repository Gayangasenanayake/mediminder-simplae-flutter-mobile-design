import 'package:flutter/material.dart';
import 'package:medimeter/widgets/labledTextField.dart';
import 'package:medimeter/widgets/timePicker.dart';

class SetReminder extends StatefulWidget {
  const SetReminder({Key? key});

  @override
  _SetReminderState createState() => _SetReminderState();
}

class _SetReminderState extends State<SetReminder> {
  final TextEditingController _diseaseController = TextEditingController();
  final TextEditingController _medicineController = TextEditingController();
  final TextEditingController _dossageController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();
  final TextEditingController _timecontroller = TextEditingController();

  int _currentIndex = 0;

  Future<void> _selectTime(BuildContext context) async {
  TimeOfDay? selectedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );

  if (selectedTime != null) {
    // Handle the selected time (e.g., save it to a variable or update a Text widget).
    // Example:
    // setState(() {
    //   selectedTimeText = selectedTime.format(context);
    // });
  }
}


  @override
  Widget build(BuildContext context) {
    var onTimeSelected;
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
                      label: 'Disease',
                      hintText: 'Enter your disease',
                      controller: _diseaseController,
                    ),

                    const SizedBox(height: 20.0),


                    LabeledTextField(
                      label: 'Medicine name',
                      hintText: 'Enter your medicine name',
                      controller: _medicineController,
                    ),

                    const SizedBox(height: 20.0),

                    LabeledTextField(
                      label: 'Dossage',
                      hintText: 'Enter dossage',
                      controller: _dossageController,
                    ),

                    const SizedBox(height: 20.0),

                    LabeledTextField(
                      label: 'Type',
                      hintText: 'Enter type',
                      controller: _typeController,
                    ),

                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () => _selectTime(context),
                      child: const Text('Select Time'),
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
