import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/constants/theme_provider.dart';

class PatientCard extends StatelessWidget {
  final String imagePath;
  final String patientName;
  final String date;
  const PatientCard({
    super.key,
    required this.imagePath,
    required this.patientName,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Consumer<ThemeProvider>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: screenWidth * 0.7,
          height: screenHeight * 0.1,
          decoration: BoxDecoration(
            color: value.patientCardColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: !value.isDark
                    ? Colors.grey.withOpacity(0.2)
                    : Colors.transparent, // shadow color
                spreadRadius: 3, // spread radius
                blurRadius: 4, // blur radius
                offset: const Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 4),
                      child: ClipOval(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: screenHeight * 0.07,
                          width: screenWidth * 0.09,
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.4,
                          child: Text(
                            patientName,
                            style: value.patientNameStyle,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.4,
                          child: Text(
                            date,
                            style: value.patientDateStyle,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz_outlined),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
