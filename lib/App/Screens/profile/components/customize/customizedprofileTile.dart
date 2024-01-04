// ignore_for_file: unused_import

import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:chartercar/utils/svgImages/svgImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../Common/textHeading/600/textHeading600_14_Black.dart';

class CustomizedProfileTile extends StatelessWidget {
  final String text1;
  final String text2;

  final VoidCallback onTap;

  final String image;

  const CustomizedProfileTile({
    super.key,
    required this.image,
    required this.onTap,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        height: 64,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: MyColors.white_clr),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(8),
                    height: 40,
                    width: 40,
                    child: SvgPicture.asset(
                      image,
                    )),
                WidthC(5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextHeading_600_14_Black(text: text1),
                    Text(
                      text2,
                      style: MyTextStyle.recent_all_textstyle,
                    ),
                  ],
                ),
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
