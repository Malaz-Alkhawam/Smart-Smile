import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/constants/theme_provider.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/main_page_app_bar.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/main_page_cards_grid.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/my_buttom_navigation_bar.dart';

import '../widgets/main_page_suggestions.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: value.backgroundColor,
        appBar: const MainPageAppBar(),
        bottomNavigationBar: const MyButtomNavigationBar(),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MainPageSuggestion(),
              MainPageCardsGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
