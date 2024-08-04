import 'package:flutter/material.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/new_case_fields.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/new_case_image.dart'; // Ensure this file and function exist

class NewCase extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final ValueNotifier selectedgender = ValueNotifier('male');
  final TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create new case'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageNewCase(),
              SizedBox(height: 25),
              FieldsNewCase(),
            ],
          ),
        ),
      ),
    );
  }
}
