import 'package:flutter/material.dart';

import '../constants/color_grid.dart';

class DElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final bool hasBorder;
  final double borderWidth;
  final Widget? icon;

  const DElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.buttonColor,
    this.textColor,
    this.borderColor,
    this.borderWidth = 1.0,
    this.padding,
    this.borderRadius = 8.0,
    this.icon,
    this.hasBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor ?? tWhite,
        backgroundColor: buttonColor ?? tBlack,
        padding: padding,
        shape: RoundedRectangleBorder(
          side: hasBorder
              ? BorderSide(color: borderColor ?? tGrey, width: borderWidth)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: icon == null
          ? child
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                const SizedBox(width: 8.0), // Space between icon and text
                child,
              ],
            ),
    );
  }
}
