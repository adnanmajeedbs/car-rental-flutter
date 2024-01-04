import 'package:chartercar/App/Screens/OnBoardingScreen/Provider/OnBoardingProvider.dart';
import 'package:chartercar/App/Screens/OnBoardingScreen/components/bottomSheet.dart';
import 'package:chartercar/App/Screens/OnBoardingScreen/View/onBoarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Consumer<OnBoardingProvider>(
          builder: (context, value, child) {
            return Container(
              child: PageView(
                controller: value.controller,
                onPageChanged: value.setPage,
                children: [
                  Screen(
                    index: 0,
                  ),
                  Screen(
                    index: 1,
                  ),
                  Screen(
                    index: 2,
                  ),
                ],
              ),
            );
          },
        ),
//BottomButtons
        OnBoardingBottomSheet()
      ],
    ));
  }
}
