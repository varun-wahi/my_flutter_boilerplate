
import 'package:flutter/material.dart';

import '../constants/color_grid.dart';
import '../constants/sizes.dart';

class DContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;

  const DContainer({super.key, this.height, this.width, this.color, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 100.0,
      width: width ?? 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(dBorderRadius),
        color: color ?? tGrey 
      ),
      child: child,
    );
  }
}
