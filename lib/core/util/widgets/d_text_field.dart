import 'package:flutter/material.dart';

import '../constants/sizes.dart';
import '../constants/color_grid.dart';


class DTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final TextInputType textInputType;
  final bool? hasBorder;
  final double borderRadius;
  final double padding;
  final Color fillColor;
  final bool obscureText;
  


  const DTextField({
    super.key,
    this.textInputType = TextInputType.text, //Default gap of 10.0
    required this.icon,
    required this.hintText, //default set to vertical,
    this.hasBorder,
    this.borderRadius = dRoundBorderRadius,
    this.padding = dPadding,
    this.fillColor = tWhite,
    this.obscureText = false
    // required this.child,
  });

  @override
  Widget build(BuildContext context) {
     return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: (hasBorder != null)? Border.all(color: tGrey, width: 1) : null,
      color: fillColor,
      ),
       child: TextFormField(
          obscureText: false,
         
         keyboardType: textInputType,
         decoration: InputDecoration(
          
          fillColor: fillColor,
          filled: true,
             prefixIcon: Icon(icon, color: tBlack,),
             contentPadding: const EdgeInsets.all(dPadding ),
             border: const OutlineInputBorder(borderSide: BorderSide.none),
             hintText: hintText),
       ),
     );
  }
}
