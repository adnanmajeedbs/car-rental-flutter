import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

class TextHeading_600_12_Grey extends StatelessWidget {
  final String text;
  const TextHeading_600_12_Grey({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: MyTextStyle.heading_600_12__Grey_textstyle,
    );
  }
}
