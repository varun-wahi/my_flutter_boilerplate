

import 'package:flutter/material.dart';


TextStyle boldHeading(
    {double size = 22,
    FontStyle style = FontStyle.normal,
    FontWeight weight = FontWeight.w600,
    Color color = Colors.black87,
    Color bgColor = Colors.transparent}) {
  return TextStyle(
      fontSize: size,
      fontStyle: style,
      fontWeight: weight,
      color: color,
      backgroundColor: bgColor);
}

TextStyle headline(
    {double size = 17,
    FontStyle style = FontStyle.normal,
    FontWeight weight = FontWeight.w600,
    Color color = Colors.black87,
    Color bgColor = Colors.transparent}) {
  return TextStyle(
      fontSize: size,
      fontStyle: style,
      fontWeight: weight,
      color: color,
      backgroundColor: bgColor);
}

TextStyle appBarHeading(
    {double size = 28,
    FontStyle style = FontStyle.normal,
    FontWeight weight = FontWeight.w700,
    Color color = Colors.white,
    Color bgColor = Colors.transparent}) {
  return TextStyle(
      fontSize: size,
      fontStyle: style,
      fontWeight: weight,
      color: color,
      backgroundColor: bgColor);
}

TextStyle buttonText(
    {double size = 12,
    FontStyle style = FontStyle.normal,
    FontWeight weight = FontWeight.w400,
    Color color = Colors.white,
    Color bgColor = Colors.transparent}) {
  return TextStyle(
      fontSize: size,
      fontStyle: style,
      fontWeight: weight,
      color: color,
      backgroundColor: bgColor);
}

TextStyle subtitle(
    {double size = 12,
    FontStyle style = FontStyle.normal,
    FontWeight weight = FontWeight.w400,
    Color color = Colors.black54}) {
  return TextStyle(
    fontSize: size,
    fontStyle: style,
    fontWeight: weight,
    color: color,
  );
}

TextStyle body(
    {double size = 15,
    FontStyle style = FontStyle.normal,
    FontWeight weight = FontWeight.w400,
    Color color = Colors.black87}) {
  return TextStyle(
    fontSize: size,
    fontStyle: style,
    fontWeight: weight,
    color: color,
  );
}

TextStyle containerText(
    {double size = 13,
    FontStyle style = FontStyle.normal,
    FontWeight weight = FontWeight.w400,
    Color color = Colors.black87}) {
  return TextStyle(
    fontSize: size,
    fontStyle: style,
    fontWeight: weight,
    color: color,
  );
}

TextStyle subheading(
    {double size = 16,
    FontStyle style = FontStyle.normal,
    FontWeight weight = FontWeight.w600,
    Color color = Colors.black87}) {
  return TextStyle(
    fontSize: size,
    fontStyle: style,
    fontWeight: weight,
    color: color,
  );
}
