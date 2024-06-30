import 'package:flutter/material.dart';

import 'main_page_card.dart';

class MainPageCardsGrid extends StatelessWidget {
  const MainPageCardsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MainPageCard(
                cardTitle: 'Take \nPhoto',
                imagePath: 'images/icons/clinic.png',
                onPressed: () {},
              ),
              MainPageCard(
                cardTitle: 'Take \nPhoto',
                imagePath: 'images/icons/clinic.png',
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MainPageCard(
                cardTitle: 'Take \nPhoto',
                imagePath: 'images/icons/clinic.png',
                onPressed: () {},
              ),
              MainPageCard(
                cardTitle: 'Take \nPhoto',
                imagePath: 'images/icons/clinic.png',
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
