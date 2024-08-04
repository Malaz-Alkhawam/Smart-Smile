import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/date_picker.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/elevated_button.dart';

class FieldsNewCase extends StatelessWidget {
  FieldsNewCase({super.key});
  final TextEditingController nameController = TextEditingController();
  final ValueNotifier selectedgender = ValueNotifier('male');
  final TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 350,
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  labelText: 'Name :',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigoAccent))),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: Container(
            width: 350,
            child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Gender :',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigoAccent)),
                ),
                items: ['Male', 'Female']
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    selectedgender.value = value;
                  }
                }),
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: Container(
            width: 350,
            child: GestureDetector(
              onTap: () {
                openDatePicker(context);
              },
              child: AbsorbPointer(
                child: TextField(
                  controller: dateController,
                  decoration: InputDecoration(
                    labelText: 'Select Date',
                    suffixIcon: Icon(Icons.calendar_today),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigoAccent),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        elevatedbutton('DONE!', () {})
      ],
    );
  }
}
