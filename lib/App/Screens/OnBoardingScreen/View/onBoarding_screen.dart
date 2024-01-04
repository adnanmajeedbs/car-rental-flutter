import 'package:flutter/material.dart';

import '../../../../utils/Theme/text_Theme_Data.dart';
import '../model/onBoarding_Screens_Model.dart';

class Screen extends StatelessWidget {
  final int index;
  Screen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        onBoardingScreenModel[index].image,
                      ),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0x00000000),
                    Color(0xFF000000),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 128),
                      child: Text(
                        onBoardingScreenModel[index].text!,
                        style: MyTextStyle.onBoardingParagraph,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
