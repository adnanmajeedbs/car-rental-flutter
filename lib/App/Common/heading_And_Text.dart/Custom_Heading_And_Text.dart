import 'package:flutter/material.dart';

import '../../../utils/Theme/text_Theme_Data.dart';
import '../DynamicSpace/SizeBoxC.dart';
import '../textHeading/600/textHeading600_20_Black_.dart';

class Custom_Heading_And_Text extends StatelessWidget {
  final String heading;
  final String text;
  final EdgeInsetsGeometry padding;
  final double heightC;
  const Custom_Heading_And_Text({
    super.key,
    required this.heading,
    required this.text,
    this.heightC = 18,
    this.padding = const EdgeInsets.all(0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeightC(27),
          //LoginText
          TextHeading_600_20_Black(text: heading),

          HeightC(7),
          // EnterEmailPassword
          Text(
            text,
            style: MyTextStyle.heading_500_12__Grey_textstyle,
          ),
          HeightC(heightC),
        ],
      ),
    );
  }
}
