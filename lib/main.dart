import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/theme/light_theme.dart';
import 'features/main screen/presentation/pages/main_screen.dart';
import 'features/main screen/splash_screen.dart';

void main() {
  runApp( const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Rental',
      theme: lightTheme,
      home: const SplashScreen(), // Start with SplashScreen
    );
  }
}
