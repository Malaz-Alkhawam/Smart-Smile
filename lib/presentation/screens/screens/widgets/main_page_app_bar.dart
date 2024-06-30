import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/constants/theme_provider.dart';

class MainPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Smart Smile',
                  style: value.mainPageTitleStyle,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                value.changeTheme();
              },
              icon: Icon(
                Icons.settings_outlined,
                color: value.iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(85);
}
