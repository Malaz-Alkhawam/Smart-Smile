import 'dart:ui';
import 'package:flutter/material.dart';

FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;

// Dimensions in physical pixels (px)
// late Size size;
// double screenWidth = size.width;
// double screenHeight = size.height;

// Theme maps

Map<String, dynamic> lightTheme = {
  'backgroundColor': const Color.fromARGB(255, 255, 255, 255),
  'buttonsColor': const Color.fromARGB(255, 117, 149, 248),
  'cardsColor': const Color.fromARGB(255, 230, 241, 255),
  'iconsColor': const Color.fromARGB(255, 117, 149, 248),
  'patientCardColor': const Color.fromARGB(255, 230, 241, 255),
  'firstCardColor': const Color.fromARGB(255, 0, 119, 255),
  'mainPageTitleStyle': const TextStyle(
    // fontWeight: FontWeight.bold,
    fontFamily: 'Trajan Pro',
    color: Color.fromARGB(255, 0, 24, 83),
    // fontSize: screenWidth * 0.06,
    fontSize: 33,
  ),
  'cardTitleStyle': const TextStyle(
    // fontWeight: FontWeight.bold,
    fontFamily: 'Trajan Pro',
    // color: Colors.white,
    color: Color.fromARGB(255, 0, 24, 83),
    fontSize: 25,
  ),
  'firstCardTitleStyle': const TextStyle(
    // fontWeight: FontWeight.bold,
    fontFamily: 'Trajan Pro',
    // color: Colors.white,
    color: Color.fromARGB(255, 253, 253, 252),
    fontSize: 25,
  ),
  'patientNameStyle': const TextStyle(
    // fontWeight: FontWeight.w500,
    fontFamily: 'Trajan Pro',
    // color: Colors.black.withOpacity(0.8),
    color: Color.fromARGB(255, 0, 24, 83),
    fontSize: 20,
  ),
  'patientDateStyle': const TextStyle(
    // fontWeight: FontWeight.bold,
    // fontWeight: FontWeight.w500,
    fontFamily: 'Trajan Pro',
    // color: Colors.black.withOpacity(0.7),
    color: Color.fromARGB(255, 0, 104, 255),
    fontSize: 15,
  ),
  'topCasesLabelStyle': const TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: 'Trajan Pro',
      // color: Colors.black.withOpacity(0.8),
      color: Color.fromARGB(255, 0, 24, 83),
      fontSize: 20),
};

Map<String, dynamic> darkTheme = {
  'backgroundColor': const Color.fromARGB(255, 21, 22, 26),
  'buttonsColor': const Color.fromARGB(255, 117, 149, 248),
  'cardsColor': const Color.fromARGB(255, 93, 95, 239),
  'firstCardColor': const Color.fromARGB(255, 0, 119, 255),
  'iconsColor': const Color.fromARGB(255, 255, 255, 255),
  'patientCardColor': const Color.fromARGB(255, 30, 31, 37),
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
  'firstCardTitleStyle': const TextStyle(
    // fontWeight: FontWeight.bold,
    fontFamily: 'Trajan Pro',
    // color: Colors.white,
    color: Color.fromARGB(255, 253, 253, 252),
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
};
