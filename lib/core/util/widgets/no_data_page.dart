
import 'package:flutter/material.dart';

import '../../../config/theme/text_styles.dart';
import '../constants/color_grid.dart';
import 'd_gap.dart';


class NoDataFoundPage extends StatelessWidget {
  const NoDataFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.do_not_disturb_alt_outlined, size: 25,color: tGreyLight,),
          const DGap(),
          Text("No data found", style: body(),)
        ],
      ),
    );
  }
}