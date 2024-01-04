import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

class ThirdButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;
  final TextStyle textStyle;
  final Color buttonColor;

  const ThirdButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width = 94,
    this.height = 30,
    this.textStyle = MyTextStyle.rental_Car_2_textStyle,
    this.buttonColor = MyColors.blue_clr,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: height,
          // width: MediaQuery.of(context).size.width,
          width: width,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ));
  }
}
