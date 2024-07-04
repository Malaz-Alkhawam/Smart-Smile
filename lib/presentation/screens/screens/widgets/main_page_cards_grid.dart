import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/utils/camera_provider.dart';
import 'package:smart_smile/presentation/screens/screens/screens/camera_scan_Screen.dart';

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
                onPressed: () {
                  Provider.of<CameraProvider>(context, listen: false)
                      .startCamera();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CameraScanScreen(),
                  ));
                },
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
