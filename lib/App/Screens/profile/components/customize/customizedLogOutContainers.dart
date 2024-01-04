// ignore_for_file: unused_import

import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:chartercar/utils/svgImages/svgImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../Common/textHeading/600/textHeading600_14_Black.dart';

class CustomizedLogOutTile extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  final String image;

  const CustomizedLogOutTile(
      {super.key,
      required this.image,
      required this.onTap,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        height: 64,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: MyColors.white_clr),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    child: SvgPicture.asset(
                      image,
                    )),
                WidthC(16),
                TextHeading_600_14_Black(text: text),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: MyColors.light_grey_90A3BF_Color,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
