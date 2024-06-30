import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/constants/theme_provider.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/patient_card.dart';

class MainPageSuggestion extends StatelessWidget {
  const MainPageSuggestion({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Consumer<ThemeProvider>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Top Cases',
                  style: value.topCasesLabelStyle,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
              width: screenWidth,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  PatientCard(
                    patientName: 'Ahmad',
                    imagePath: 'images/face2.jpg',
                    date: '12/12/2012',
                  ),
                  PatientCard(
                    patientName: 'Ahmad',
                    imagePath: 'images/face2.jpg',
                    date: '12/12/2012',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
