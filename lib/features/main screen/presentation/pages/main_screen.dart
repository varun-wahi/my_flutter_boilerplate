import 'dart:io';
import 'package:car_rental_host/features/user%20profile/presentation/pages/more_options_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../config/theme/text_styles.dart';
import '../../../../core/util/constants/color_grid.dart';
import '../../../../core/util/constants/sizes.dart';
import '../../../home /presentation/pages/home_screen.dart';
import '../riverpod/tab_notifier.dart';


class MainApp extends ConsumerWidget {
  MainApp({super.key});

  final List<Widget> _screens = [
    const HomeScreen(),
    const MoreOptionsPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTabIndex = ref.watch(tabProvider);

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if(currentTabIndex !=0){
          ref.read(tabProvider.notifier).setTab(0);
          return;
        }
        if (didPop) {
          return;
        }

        _showExitDialog(context);
      },
      child: Scaffold(
              // body: _screens[_currentIndex],
      body: _screens[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: tBackground,
        selectedItemColor: tBlack,
        unselectedItemColor: tGreyDark,
        
        currentIndex: currentTabIndex,
        onTap: (index) {
          // print("Index selected: $index");
                  ref.read(tabProvider.notifier).setTab(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            backgroundColor: tBackground,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            // backgroundColor: tBlack,

            icon: FaIcon(FontAwesomeIcons.user, color: tBlack),
            backgroundColor: tBackground,

            label: 'Profile',
          ),
        ],
      ),


    ));
  }
}

void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: const EdgeInsets.all(dPadding * 2),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        title:  Text(
          'Exit App',
          style: headline(),
        ),
        content:
             Text('Do you want to exit the app?', style: body()),

        actions: <Widget>[
            // Yes button with rounded corners and custom color
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: tOrange, // Adjust color as needed
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(dBorderRadius),
                          // Adjust corner radius
                        ),
                      ),
                      child:  Text(
                        'Yes',
                        style: body(),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(true);
                        _exitApp();
                      },
                    ),
                  ),
                  const SizedBox(
                    width: dGap,
                  ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: tWhite, // Adjust color as needed
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1.0, color: tGreyLight),
                          borderRadius: BorderRadius.circular(
                              dBorderRadius), // Adjust corner radius
                        ),
                      ),
                      child: Text(
                        'No',
                        style: body(),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pop(); // Close dialog without logging out
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        // actions: [
        //   DElevatedButton(
        //     buttonColor: tWhite,
        //     textColor: tBlack,
        //     onPressed: () => Navigator.of(context).pop(),
        //     child: const Text('No'),
        //   ),
        //   DElevatedButton(
        //     onPressed: () => Navigator.of(context).pop(true),
        //     child: const Text('Yes'),
        //   ),
        // ],
      ),
    ).then((value) {
      if (value == true) {
        // If user confirms exit, close the app
        Navigator.of(context).pop(true);
      }
    });
  }

void _exitApp() {
    if (Platform.isAndroid) {
      SystemNavigator.pop();
    } else if (Platform.isIOS) {
      // For iOS, we'll just exit to the home screen
      SystemNavigator.pop();
    }
  }
