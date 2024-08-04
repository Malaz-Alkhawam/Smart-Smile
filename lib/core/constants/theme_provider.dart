import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_smile/core/constants/app_constants.dart';

class ThemeProvider extends ChangeNotifier {
  // Map<String, dynamic> theme = appTheme;
  bool isDark = false;
  late Color backgroundColor = lightTheme['backgroundColor'];
  late Color buttonsColor = lightTheme['buttonsColor'];
  late Color cardsColor = lightTheme['cardsColor'];
  late Color iconColor = lightTheme['iconsColor'];
  late Color patientCardColor = lightTheme['patientCardColor'];
  late Color defaultbuttoncolor = lightTheme['defaultbuttoncolor'];
  late TextStyle mainPageTitleStyle = lightTheme['mainPageTitleStyle'];
  late TextStyle cardTitleStyle = lightTheme['cardTitleStyle'];
  late TextStyle patientNameStyle = lightTheme['patientNameStyle'];
  late TextStyle patientDateStyle = lightTheme['patientDateStyle'];
  late TextStyle topCasesLabelStyle = lightTheme['topCasesLabelStyle'];
  late TextStyle generalbuttonstyle = lightTheme['generalbuttonstyle'];
  void changeTheme() {
    if (!isDark) {
      isDark = !isDark;
      backgroundColor = darkTheme['backgroundColor'];
      buttonsColor = darkTheme['buttonsColor'];
      cardsColor = darkTheme['cardsColor'];
      iconColor = darkTheme['iconsColor'];
      patientCardColor = darkTheme['patientCardColor'];
      defaultbuttoncolor = darkTheme['defaultbuttoncolor'];
      mainPageTitleStyle = darkTheme['mainPageTitleStyle'];
      cardTitleStyle = darkTheme['cardTitleStyle'];
      patientNameStyle = darkTheme['patientNameStyle'];
      patientDateStyle = darkTheme['patientDateStyle'];
      topCasesLabelStyle = darkTheme['topCasesLabelStyle'];
      generalbuttonstyle = darkTheme['generalbuttonstyle'];
      notifyListeners();
    } else {
      isDark = !isDark;
      backgroundColor = lightTheme['backgroundColor'];
      buttonsColor = lightTheme['buttonsColor'];
      cardsColor = lightTheme['cardsColor'];
      iconColor = lightTheme['iconsColor'];
      patientCardColor = lightTheme['patientCardColor'];
      defaultbuttoncolor = lightTheme['defaultbuttoncolor'];
      mainPageTitleStyle = lightTheme['mainPageTitleStyle'];
      cardTitleStyle = lightTheme['cardTitleStyle'];
      patientNameStyle = lightTheme['patientNameStyle'];
      patientDateStyle = lightTheme['patientDateStyle'];
      topCasesLabelStyle = lightTheme['topCasesLabelStyle'];
      generalbuttonstyle = lightTheme['generalbuttonstyle'];
      notifyListeners();
    }
  }

  void showSnakeBar() {}
}
