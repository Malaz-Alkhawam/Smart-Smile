import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/constants/theme_provider.dart';

class MainPageCard extends StatelessWidget {
  final String imagePath;
  final String cardTitle;
  final VoidCallback onPressed;
  final double height;
  final double width;
  const MainPageCard({
    super.key,
    required this.imagePath,
    required this.cardTitle,
    required this.onPressed,
    required this.height,
    required this.width,
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
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: value.cardsColor,
              color: cardTitle == 'Take \nPhoto'
                  ? value.firstCardsColor
                  : value.cardsColor,
            ),
            child: Column(
              children: [
                Container(
                  // color: Colors.red,
                  height: height * 0.5,
                  width: width * 0.8,
                  alignment: Alignment.centerLeft,
                  // color: Colors.red,
                  child: Text(
                    cardTitle,
                    style: cardTitle == 'Take \nPhoto'
                        ? value.firstCardTitleStyle
                        : value.cardTitleStyle,
                  ),
                ),
                Container(
                  // color: Colors.red,s
                  height: height * 0.4,
                  width: width * 0.4,
                  alignment: Alignment.center,
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
