import 'package:flutter/material.dart';
import 'package:smart_smile/presentation/screens/screens/screens/camera_scan_screen.dart';
import 'package:smart_smile/presentation/screens/screens/screens/new_case.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/elevated_button.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/main_result_4process.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/suggestion.dart';

class AfterProcess extends StatelessWidget {
  const AfterProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result "),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Main Result ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              mainResult(),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Other Suggestions  ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 200,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 10.0),
                  child: const Suggestion(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              elevatedbutton('TAKE AGAIN', () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => NewCase()));
              }),
              const SizedBox(
                height: 10,
              ),
              elevatedbutton('DONE!', () {})
            ],
          ),
        ),
      ),
    );
  }
}
