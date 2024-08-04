import 'dart:ui';
import 'package:flutter/material.dart';

FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;

// Dimensions in physical pixels (px)
// late Size size;
// double screenWidth = size.width;
// double screenHeight = size.height;

// Theme maps

Map<String, dynamic> lightTheme = {
  'backgroundColor': const Color.fromARGB(255, 248, 248, 248),
  'buttonsColor': const Color.fromARGB(255, 117, 149, 248),
  'cardsColor': const Color.fromARGB(255, 29, 78, 224),
  'iconsColor': Colors.black.withOpacity(0.8),
  'patientCardColor': const Color.fromARGB(255, 255, 255, 255),
  'defaultbuttoncolor': const Color.fromARGB(255, 103, 134, 228),
  'mainPageTitleStyle': const TextStyle(
    // fontWeight: FontWeight.bold,
    fontFamily: 'Trajan Pro',
    color: Colors.black87,
    // fontSize: screenWidth * 0.06,
    fontSize: 33,
  ),
  'cardTitleStyle': const TextStyle(
    // fontWeight: FontWeight.bold,
    fontFamily: 'Trajan Pro',
    color: Colors.white,
    fontSize: 25,
  ),
  'patientNameStyle': TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: 'Trajan Pro',
    color: Colors.black.withOpacity(0.8),
    fontSize: 20,
  ),
  'patientDateStyle': TextStyle(
    // fontWeight: FontWeight.bold,
    fontWeight: FontWeight.w400,
    fontFamily: 'Trajan Pro',
    color: Colors.black.withOpacity(0.7),
    fontSize: 15,
  ),
  'topCasesLabelStyle': TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: 'Trajan Pro',
      color: Colors.black.withOpacity(0.8),
      fontSize: 20),
  'generalbuttonstyle': const TextStyle(
      // fontWeight: FontWeight.w500,
      // fontFamily: 'Trajan Pro',
      // color: Colors.black.withOpacity(0.8),
      fontSize: 20),
};

Map<String, dynamic> darkTheme = {
  'backgroundColor': const Color.fromARGB(255, 21, 22, 26),
  'buttonsColor': const Color.fromARGB(255, 117, 149, 248),
  'cardsColor': const Color.fromARGB(255, 93, 95, 239),
  'iconsColor': const Color.fromARGB(255, 255, 255, 255),
  'patientCardColor': const Color.fromARGB(255, 30, 31, 37),
  'defaultbuttoncolor': const Color.fromARGB(255, 103, 134, 228),
  'mainPageTitleStyle': const TextStyle(
    // fontWeight: FontWeight.bold,
    fontFamily: 'Trajan Pro',
    color: Colors.white,
    fontSize: 33,
  ),
  'cardTitleStyle': const TextStyle(
    // fontWeight: FontWeight.bold,
    fontFamily: 'Trajan Pro',
    color: Colors.white,
    fontSize: 25,
  ),
  'patientNameStyle': const TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: 'Trajan Pro',
    color: Color.fromARGB(255, 255, 255, 255),
    fontSize: 20,
  ),
  'patientDateStyle': TextStyle(
    // fontWeight: FontWeight.bold,
    fontWeight: FontWeight.w400,
    fontFamily: 'Trajan Pro',
    color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
    fontSize: 15,
  ),
  'topCasesLabelStyle': TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: 'Trajan Pro',
    color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
    fontSize: 20,
  ),
  'generalbuttonstyle': const TextStyle(
      // fontWeight: FontWeight.w500,
      // fontFamily: 'Trajan Pro',
      // color: Colors.black.withOpacity(0.8),
      fontSize: 20),
};
