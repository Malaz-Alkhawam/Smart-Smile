import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_smile/core/constants/app_constants.dart';

class ThemeProvider extends ChangeNotifier {
  // Map<String, dynamic> theme = appTheme;
  bool isDark = false;
  late Color backgroundColor = lightTheme['backgroundColor'];
  late Color buttonsColor = lightTheme['buttonsColor'];
  late Color cardsColor = lightTheme['cardsColor'];
  late Color firstCardsColor = lightTheme['firstCardColor'];
  late Color iconColor = lightTheme['iconsColor'];
  late Color patientCardColor = lightTheme['patientCardColor'];
  late TextStyle mainPageTitleStyle = lightTheme['mainPageTitleStyle'];
  late TextStyle cardTitleStyle = lightTheme['cardTitleStyle'];
  late TextStyle firstCardTitleStyle = lightTheme['firstCardTitleStyle'];
  late TextStyle patientNameStyle = lightTheme['patientNameStyle'];
  late TextStyle patientDateStyle = lightTheme['patientDateStyle'];
  late TextStyle topCasesLabelStyle = lightTheme['topCasesLabelStyle'];
  void changeTheme() {
    if (!isDark) {
      isDark = !isDark;
      backgroundColor = darkTheme['backgroundColor'];
      buttonsColor = darkTheme['buttonsColor'];
      cardsColor = darkTheme['cardsColor'];
      firstCardsColor = darkTheme['firstCardColor'];
      iconColor = darkTheme['iconsColor'];
      patientCardColor = darkTheme['patientCardColor'];
      mainPageTitleStyle = darkTheme['mainPageTitleStyle'];
      cardTitleStyle = darkTheme['cardTitleStyle'];
      firstCardTitleStyle = darkTheme['firstCardTitleStyle'];
      patientNameStyle = darkTheme['patientNameStyle'];
      patientDateStyle = darkTheme['patientDateStyle'];
      topCasesLabelStyle = darkTheme['topCasesLabelStyle'];
      notifyListeners();
    } else {
      isDark = !isDark;
      backgroundColor = lightTheme['backgroundColor'];
      buttonsColor = lightTheme['buttonsColor'];
      cardsColor = lightTheme['cardsColor'];
      firstCardsColor = lightTheme['firstCardColor'];
      iconColor = lightTheme['iconsColor'];
      patientCardColor = lightTheme['patientCardColor'];
      mainPageTitleStyle = lightTheme['mainPageTitleStyle'];
      cardTitleStyle = lightTheme['cardTitleStyle'];
      firstCardTitleStyle = lightTheme['firstCardTitleStyle'];
      patientNameStyle = lightTheme['patientNameStyle'];
      patientDateStyle = lightTheme['patientDateStyle'];
      topCasesLabelStyle = lightTheme['topCasesLabelStyle'];
      notifyListeners();
    }
  }

  void showSnakeBar() {}
}
