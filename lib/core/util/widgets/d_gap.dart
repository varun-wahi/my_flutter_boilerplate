import 'package:flutter/material.dart';

import '../constants/sizes.dart';

class DGap extends StatelessWidget {
  final double gap;
  final bool vertical;

  const DGap({
    super.key,
    this.gap = dGap, //Default gap of 10.0
    this.vertical = true, //default set to vertical
    // required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical ? gap : 0.0,
      width: vertical ? 0.0 : gap,
    );
  }
}
