import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/constants/theme_provider.dart';

class MyButtomNavigationBar extends StatelessWidget {
  const MyButtomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Consumer<ThemeProvider>(
      builder: (context, value, child) => Container(
        // color: Colors.transparent,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
              // top: BorderSide(color: Colors.grey.withOpacity(0.3)),
              ),
        ),
        width: screenWidth * 0.7,
        height: screenHeight * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              size: screenWidth * 0.07,
              color: value.firstCardsColor,
            ),
            Icon(
              Icons.notification_add_outlined,
              size: screenWidth * 0.07,
              color: Colors.black.withOpacity(0.3),
            ),
            Icon(
              Icons.settings_outlined,
              size: screenWidth * 0.07,
              color: Colors.black.withOpacity(0.3),
            )
          ],
        ),
      ),
    );
  }
}
