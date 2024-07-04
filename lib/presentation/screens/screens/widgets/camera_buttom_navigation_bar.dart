import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CameraNavigationBar extends StatelessWidget {
  const CameraNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Handle submit action
          },
          child: const Text('Submit'),
        ),
      ),
    );
  }
}
