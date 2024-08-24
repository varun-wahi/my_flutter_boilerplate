import 'package:flutter/material.dart';

import '../constants/color_grid.dart';

class DIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color foregroundColor;

  const DIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor = Colors.white10, // Default color if not specified
    this.foregroundColor = tWhite, // Default color if not specified
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
        color: foregroundColor, // Icon color
      ),
    );
  }
}
