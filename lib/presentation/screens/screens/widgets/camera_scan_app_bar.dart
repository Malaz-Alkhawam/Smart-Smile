import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/constants/theme_provider.dart';

class CameraScanAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CameraScanAppBar({super.key});

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
                  'Camera',
                  style: value.mainPageTitleStyle,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                //go to home page
              },
              icon: Icon(
                Icons.arrow_back,
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
