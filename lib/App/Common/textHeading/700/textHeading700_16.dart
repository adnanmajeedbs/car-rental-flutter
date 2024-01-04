import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

class TextHeading_700_16 extends StatelessWidget {
  final String text;
  const TextHeading_700_16({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: MyTextStyle.heading_700_16_textStyle_two,
    );
  }
}
