import 'package:car_rental_host/features/auth/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../../config/theme/text_styles.dart';
import '../../core/util/constants/color_grid.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to OnboardingScreen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        //! USE THIS OF YOU WANT AN ONBOARDING SCREEN
        // MaterialPageRoute(builder: (context) => const OnboardingScreen()),
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tBlack,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "New App",
            style: boldHeading(color: tWhite, size: 40),
          ),
          // child: Image.asset(
          //   'assets/images/car_logo.png',
          //   width: MediaQuery.sizeOf(context).width,
          //   color: tWhite,
          // ),
        ),
      ),
    );
  }
}
