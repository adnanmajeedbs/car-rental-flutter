import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';

import '../../../utils/Theme/colors_theme_data.dart';
import '../../../utils/Theme/text_Theme_Data.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  // final double width;
  final double height;
  final Color color;
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
    // this.width = 350,
    this.height = 55,
    this.color = MyColors.primary_Button_Color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          vibrate();
          onTap();
        },
        child: Container(
          height: height,
          width: MediaQuery.of(context).size.width,
          // width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              text,
              style: MyTextStyle.Button_Text,
            ),
          ),
        ));
  }
}
