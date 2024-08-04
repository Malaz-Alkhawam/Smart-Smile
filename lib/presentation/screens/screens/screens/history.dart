import 'package:flutter/material.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/history_list.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/latest_cases_list.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/patiant_search.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "History ",
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Search(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Latest Caces ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LatestCasesList(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "History ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    HistoryList(),
                  ]),
            )));
  }
}
