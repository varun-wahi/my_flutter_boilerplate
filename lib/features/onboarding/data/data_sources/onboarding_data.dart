import '../models/onboarding_model.dart';

class OnboardingData {
  List<OnboardingModel> items = [
    OnboardingModel(
        title: "Rent any car",
        descriptions:
            "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        image: "assets/images/car_logo.png"),
    OnboardingModel(
        title: "Explore",
        descriptions:
            "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        image: "assets/images/car_logo.png"),
    OnboardingModel(
        title: "Let's start a new experience",
        descriptions:
            "Choose your favourite car, rent it and enjoy new experience!",
        image: "assets/images/volkswagen_car.png"),
  ];
}
