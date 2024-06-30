import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/constants/theme_provider.dart';

class MainPageCard extends StatelessWidget {
  final String imagePath;
  final String cardTitle;
  final VoidCallback onPressed;
  const MainPageCard({
    super.key,
    required this.imagePath,
    required this.cardTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Consumer<ThemeProvider>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: screenHeight * 0.22,
            width: screenWidth * 0.36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: value.cardsColor,
            ),
            child: Column(
              children: [
                Container(
                  height: screenHeight * 0.11,
                  width: screenWidth * 0.25,
                  alignment: Alignment.centerLeft,
                  // color: Colors.red,
                  child: Text(
                    cardTitle,
                    style: value.cardTitleStyle,
                  ),
                ),
                Container(
                  height: screenHeight * 0.08,
                  width: screenWidth * 0.25,
                  alignment: Alignment.centerRight,
                  // color: Colors.red,
                  child: Image.asset(
                    imagePath,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
