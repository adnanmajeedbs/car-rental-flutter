import 'package:chartercar/utils/Images/ImagePath.dart';

class OnBoardingScreenModel {
  final String image;
  final String? text;
  OnBoardingScreenModel({
    required this.image,
    required this.text,
  });
}

List<OnBoardingScreenModel> onBoardingScreenModel = [
  OnBoardingScreenModel(
      image: ImagePath.OnBoarding1,
      text:
          "Make it easy for users to quickly book a ride from their current location with just a few taps."),
  OnBoardingScreenModel(
      image: ImagePath.OnBoarding2,
      text:
          "Provide a variety of vehicle options to choose from, catering to different preferences and budgets."),
  OnBoardingScreenModel(
      image: ImagePath.OnBoarding3,
      text:
          "Let users track their ride in real-time, so they know exactly where their driver is and when they'll arrive."),
];
