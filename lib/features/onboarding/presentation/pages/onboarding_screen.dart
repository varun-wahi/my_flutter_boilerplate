
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/util/constants/color_grid.dart';
import '../../../../core/util/widgets/d_elevated_button.dart';
import '../../../../core/util/widgets/d_icon_button.dart';
import '../../../auth/presentation/pages/login_screen.dart';
import '../../data/data_sources/onboarding_data.dart';
// Import LoginScreen

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingScreen> {
  final controller = OnboardingData();
  final pageController = PageController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: isLastPage
            ? getStarted() // Display Get Started button on the last page
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // const DGap(vertical: false,gap: dGap*4,),
                  DElevatedButton(
                    buttonColor: tBlack,
                    textColor: tWhite,
                      onPressed: () => pageController
                          .jumpToPage(controller.items.length - 1),
                      child: const Text(
                        "Skip",
                      )), 
                  
                  SmoothPageIndicator(
                    controller: pageController,
                    count: controller.items.length,
                    onDotClicked: (index) => pageController.animateToPage(index,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn),
                    effect: const WormEffect(
                      dotHeight: 12,
                      dotWidth: 12,
                      activeDotColor: tBlack,
                    ),
                  ),
                  DIconButton(
                    backgroundColor: tBlack,
                    foregroundColor: tWhite,
                    icon: Icons.arrow_forward_ios_rounded,
                      onPressed: () => pageController.nextPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.linear),),
                ],
              ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: PageView.builder(
            onPageChanged: (index) => setState(
                () => isLastPage = controller.items.length - 1 == index),
            itemCount: controller.items.length,
            controller: pageController,
            itemBuilder: (context, index) {
              if (index == controller.items.length - 1) {
                // 3rd Screen - Get Started Button
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      controller.items[index].image,
                      height: 250,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      controller.items[index].title,
                      style: const TextStyle(
                          fontSize: 36, fontWeight: FontWeight.bold), textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 15),
                    Text(controller.items[index].descriptions,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 20),
                        textAlign: TextAlign.start
                        ),
                    // Display Get Started button on the last onboarding page
                  ],
                );
              } else {
                // First 2 Onboarding Screens
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(controller.items[index].image,
                        height: 300, width: 300),
                    const SizedBox(height: 15),
                    Text(
                      controller.items[index].title,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    Text(controller.items[index].descriptions,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 17),
                        textAlign: TextAlign.center),
                  ],
                );
              }
            }),
      ),
    );
  }

  Widget getStarted() {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: tBlack),
      width: MediaQuery.of(context).size.width * .9,
      height: 55,
      child: TextButton(
          onPressed: () async {
            // Navigate to LoginScreen
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: const Text(
            "Get Started",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
