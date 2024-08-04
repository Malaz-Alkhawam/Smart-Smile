import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/presentation/screens/screens/screens/after_process.dart';

class CameraNavigationBar extends StatelessWidget {
  const CameraNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigoAccent,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AfterProcess()));
            },
            child: const Text(
              'Submit',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
