import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_smile/core/constants/theme_provider.dart';

class DefaultButton extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onPressed;
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  const DefaultButton({
    super.key,
    required this.width,
    required this.onPressed,
    required this.icon,
    required this.height,
    required this.iconSize,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, value, child) => InkWell(
        borderRadius: BorderRadius.circular(35),
        onTap: onPressed,
        child: Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
