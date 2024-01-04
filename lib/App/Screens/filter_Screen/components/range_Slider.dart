import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Screens/filter_Screen/provider/filterDropDown_Provider.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../utils/Theme/colors_theme_data.dart';
import '../../../../utils/Theme/text_Theme_Data.dart';

class RangeSliderFilterPage extends StatelessWidget {
  RangeSliderFilterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<FilterDropDownProvider>(builder: (context, value, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeightC(15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              MyText.price_Range_per_Day,
              style: MyTextStyle.Secondary_Google_Button_TextStyle,
            ),
          ),
          HeightC(7),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value.values.start.toInt().toString(),
                  style: MyTextStyle.Secondary_Google_Button_TextStyle,
                ),
                Text(
                  value.values.end.toInt().toString(),
                  style: MyTextStyle.Secondary_Google_Button_TextStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: RangeSlider(
                values: value.values,
                max: value.maxValue,
                min: value.minValue,
                divisions: value.divisions,
                activeColor: MyColors.blue_clr,
                inactiveColor: MyColors.white_clr,
                onChanged: (newValue) {
                  value.updateValues(newValue);
                }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  MyText.minimum_range +
                      ' ' +
                      value.minValue.toInt().toString() +
                      ' Rs',
                  style: MyTextStyle.heading_500_12__Grey_textstyle,
                ),
                Text(
                  MyText.maximum_range +
                      ' ' +
                      value.maxValue.toInt().toString() +
                      ' Rs',
                  style: MyTextStyle.heading_500_12__Grey_textstyle,
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
