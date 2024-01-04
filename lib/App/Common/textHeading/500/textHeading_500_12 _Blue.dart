import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

class TextHeading_500_12_Blue extends StatelessWidget {
  final String text;
  const TextHeading_500_12_Blue({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: MyTextStyle.heading_500_12__Blue_textstyle,
    );
  }
}
