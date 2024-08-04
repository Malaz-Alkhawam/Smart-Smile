import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  TextEditingController SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
          decoration: InputDecoration(
        labelText: 'Search',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.indigoAccent)),
        prefixIcon: Icon(Icons.search),
      )),
    );
  }
}
