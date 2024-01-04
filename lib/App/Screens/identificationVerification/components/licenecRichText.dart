import 'package:chartercar/App/Common/richText/MyrichText.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import '../../../../utils/Text/text.dart';

class LicenceRichText extends StatelessWidget {
  final int index;
  const LicenceRichText({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          style: MyTextStyle.heading_500_12__Blue_textstyle,
          children: <TextSpan>[
            TextSpan(text: MyText.clickHere),
            buildClickableTextSpan(
              onTap: () {},
              style1: MyTextStyle.heading_600_12__Grey_textstyle,
              text: index == 0
                  ? MyText.uploadFrontImageParagraph
                  : MyText.uploadBackImageParagraph,
            ),
          ]),
    );
  }
}
