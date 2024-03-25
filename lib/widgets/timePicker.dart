import 'package:flutter/material.dart';

class CustomTimePicker extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final VoidCallback onTimeSelected;

  CustomTimePicker({
    required this.controller,
    required this.label,
    required this.onTimeSelected,
  });

  @override
  _CustomTimePickerState createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      // Update the text field and call the callback
      widget.controller.text = pickedTime.format(context);
      widget.onTimeSelected();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.label,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 8),
        Row(
          children: <Widget>[
            Expanded(
              child: TextFormField(
                controller: widget.controller,
                readOnly: true,
                onTap: () => _selectTime(context),
                decoration: const InputDecoration(
                  hintText: 'Select time',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.access_time),
              onPressed: () => _selectTime(context),
            ),
          ],
        ),
      ],
    );
  }
}
