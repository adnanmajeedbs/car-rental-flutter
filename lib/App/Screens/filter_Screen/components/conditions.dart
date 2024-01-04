import 'package:chartercar/App/Screens/filter_Screen/provider/filterDropDown_Provider.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Common/DynamicSpace/SizeBoxC.dart';

class Condition extends StatelessWidget {
  const Condition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeightC(25),
          Text(
            MyText.condition,
            style: MyTextStyle.Secondary_Google_Button_TextStyle,
          ),
          HeightC(3),
          Consumer<FilterDropDownProvider>(builder: (context, value, child) {
            return Row(
              children: [
                GestureDetector(
                  onTap: () {
                    vibrate();
                    value.toogleNewCondition();
                  },
                  child: Container(
                    height: 36,
                    width: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: value.newCondition
                          ? MyColors.blue_clr
                          : MyColors.white_clr,
                    ),
                    child: Center(
                      child: Text('New',
                          style: value.newCondition
                              ? MyTextStyle.rental_Car_2_textStyle
                              : MyTextStyle.categoriesText_textStyle),
                    ),
                  ),
                ),
                WidthC(11),
                GestureDetector(
                  onTap: () {
                    vibrate();
                    value.toogleUsedCondition();
                  },
                  child: Container(
                    height: 36,
                    width: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: value.usedCondition
                          ? MyColors.blue_clr
                          : MyColors.white_clr,
                    ),
                    child: Center(
                      child: Text('Used',
                          style: value.usedCondition
                              ? MyTextStyle.rental_Car_2_textStyle
                              : MyTextStyle.categoriesText_textStyle),
                    ),
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
