

import 'package:flutter/material.dart';

import '../constants/color_grid.dart';
import '../constants/sizes.dart';

class DDivider extends StatelessWidget {
  final double gap;
  final double thickness;
  final Color color;


  const DDivider({
    super.key,
    this.gap = dGap,
    this.thickness =0.2,
    this.color = tGrey //Default gap of 10.0

    // required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: gap,
      thickness: thickness,
      color: color,
    );
  }
}
