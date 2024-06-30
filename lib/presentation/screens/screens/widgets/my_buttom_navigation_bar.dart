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
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          color: value.patientCardColor,
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
        width: screenWidth * 0.7,
        height: screenHeight * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_outlined,
              size: screenWidth * 0.07,
              color: value.cardsColor,
            ),
            Icon(
              Icons.notification_add_outlined,
              size: screenWidth * 0.07,
              color: Colors.red.withOpacity(0.6),
            ),
            Icon(
              Icons.settings_outlined,
              size: screenWidth * 0.07,
              color: Colors.green.withOpacity(0.6),
            )
          ],
        ),
      ),
    );
  }
}
