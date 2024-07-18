import 'package:flutter/material.dart';

import 'main_page_card.dart';

class MainPageCardsGrid extends StatelessWidget {
  const MainPageCardsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              MainPageCard(
                height: screenHeight * 0.22,
                width: screenWidth * 0.45,
                cardTitle: 'Take \nPhoto',
                imagePath: 'images/icons/cameraIcon.png',
                onPressed: () {},
              ),
              MainPageCard(
                height: screenHeight * 0.22,
                width: screenWidth * 0.45,
                cardTitle: 'History',
                imagePath: 'images/icons/historyIcon.png',
                onPressed: () {},
              ),
            ],
          ),
          MainPageCard(
            height: screenHeight * 0.34,
            width: screenWidth * 0.45,
            cardTitle: 'Open \nGalary',
            imagePath: 'images/icons/galleryIcon.png',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
