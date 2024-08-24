import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../constants/snackbar__types_enum.dart';

void dSnackBar(BuildContext context, String text, TypeSnackbar type) {
  Color backgroundColor;
  IconData icon;
  Color textColor;

  switch (type) {
    case TypeSnackbar.success:
      backgroundColor = Colors.green.withOpacity(0.8);
      icon = Icons.check_circle;
      textColor = Colors.white;
      break;
    case TypeSnackbar.info:
      backgroundColor = Colors.blue.withOpacity(0.8);
      icon = Icons.info;
      textColor = Colors.white;
      break;
    case TypeSnackbar.warning:
      backgroundColor = Colors.orange.withOpacity(0.8);
      icon = Icons.warning;
      textColor = Colors.white;
      break;
    case TypeSnackbar.error:
      backgroundColor = Colors.red.withOpacity(0.8);
      icon = Icons.error;
      textColor = Colors.white;
      break;
  }

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      duration: const Duration(milliseconds: 1500),
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: textColor,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: TextStyle(color: textColor),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
