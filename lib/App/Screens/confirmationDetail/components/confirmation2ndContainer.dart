import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Images/ImagePath.dart';
import '../../../../utils/Theme/colors_theme_data.dart';
import '../../../Common/DynamicSpace/SizeBoxC.dart';
import '../../../Common/textHeading/600/textHeading600_12 _grey.dart';
import '../../../Common/textHeading/600/textHeading600_16_Black.dart';
import '../../carDetails/provider/car_Detail_provider.dart';
import '../../recents/model/recentModel.dart';

class Confirmation2ndContainer extends StatelessWidget {
  const Confirmation2ndContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CarDetailProvider>(builder: (context, value, child) {
      return Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 17, bottom: 22),
        decoration: BoxDecoration(
          color: MyColors.white_clr,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: TextHeading_600_16_Black(text: MyText.rental_Summary)),
            HeightC(8),
            Container(
                child: TextHeading_600_12_Grey(
                    text: MyText.prices_may_change_depending_on_the_length)),
            HeightC(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 116,
                  height: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              recentList[value.currentIndex].image))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recentList[value.currentIndex].carName,
                      style: MyTextStyle.heading_700_20_textStyle,
                    ),
                    Container(
                      height: 14,
                      width: 75,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImagePath.star),
                              fit: BoxFit.contain)),
                    ),
                    HeightC(8),
                    Text(
                      "440+ Reviewer",
                      style: MyTextStyle.heading_500_12__Grey_textstyle,
                    ),
                  ],
                ),
                WidthC(0),
              ],
            ),
            Divider(
              // height: 1,
              color: MyColors.light_grey_90A3BF_Color,
            ),
            HeightC(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyText.subtotal,
                      style: MyTextStyle.heading_600_12__Grey_textstyle,
                    ),
                    HeightC(12),
                    Text(
                      MyText.days,
                      style: MyTextStyle.heading_600_12__Grey_textstyle,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      recentList[value.currentIndex].price,
                      style: MyTextStyle.heading_600_16_textstyle,
                    ),
                    HeightC(12),
                    Text(
                      "4",
                      style: MyTextStyle.heading_600_16_textstyle,
                    )
                  ],
                ),
              ],
            ),
            HeightC(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyText.total_Rental_Price,
                      style: MyTextStyle.heading_700_16_textStyle_two,
                    ),
                    HeightC(12),
                    Text(
                      "Overall price rental",
                      style: MyTextStyle.heading_600_12__Grey_textstyle,
                    )
                  ],
                ),
                Text(
                  recentList[value.currentIndex].price,
                  style: MyTextStyle.heading_700_20_textStyle,
                )
              ],
            )
          ],
        ),
      );
    });
  }
}
