import 'package:flutter/material.dart';

import '../../core/util/constants/color_grid.dart';

final lightTheme = ThemeData(
    primarySwatch: Colors.orange,

    //
    //
    appBarTheme: const AppBarTheme(
      scrolledUnderElevation: 0,
      backgroundColor: tBackground,
      centerTitle: true
    ),

    //
    //

    scaffoldBackgroundColor: tWhite,
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
        selectedItemColor: tBlack,
        showUnselectedLabels: true,
        backgroundColor: tBackground,
        unselectedItemColor: tGreyDark,
        selectedIconTheme: IconThemeData(size: 19),
        unselectedIconTheme: IconThemeData(size: 16)

        // backgroundColor: tOrange
        ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: tBlack,
        foregroundColor: tWhite,
        elevation: 0.0,
        shape: CircleBorder()));
