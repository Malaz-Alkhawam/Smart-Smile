import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void openDatePicker(BuildContext context) {
  BottomPicker.date(
    pickerTitle: Text(
      'Set a Birthday',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.black,
      ),
    ),
    dateOrder: DatePickerDateOrder.dmy,
    initialDateTime: DateTime(1960, 1, 1),
    maxDateTime: DateTime(3000),
    minDateTime: DateTime(1960),
    pickerTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 12,
    ),
    onChange: (index) {
      print(index);
    },
    onSubmit: (index) {
      print(index);
    },
    bottomPickerTheme: BottomPickerTheme.plumPlate,
  ).show(context);
}
