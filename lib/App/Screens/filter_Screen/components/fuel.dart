import 'package:chartercar/App/Screens/filter_Screen/model/dropDownsModles.dart';
import 'package:chartercar/App/Screens/filter_Screen/provider/filterDropDown_Provider.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Common/DynamicSpace/SizeBoxC.dart';

class Fuel extends StatelessWidget {
  const Fuel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeightC(25),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            MyText.fuel,
            style: MyTextStyle.Secondary_Google_Button_TextStyle,
          ),
        ),
        HeightC(3),
        Consumer<FilterDropDownProvider>(builder: (context, value, child) {
          return Container(
            height: 37,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: fuelModelList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: index == 0
                      ? EdgeInsets.only(left: 20)
                      : EdgeInsets.only(
                          left: 12,
                          right: index == fuelModelList.length - 1 ? 20 : 0),
                  child: GestureDetector(
                    onTap: () {
                      vibrate();
                      value.toogleFuelTile(index);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: fuelModelList[index].isselected
                            ? MyColors.blue_clr
                            : MyColors.white_clr,
                      ),
                      child: Center(
                        child: Text(fuelModelList[index].text,
                            style: fuelModelList[index].isselected
                                ? MyTextStyle.rental_Car_2_textStyle
                                : MyTextStyle.categoriesText_textStyle),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        })
      ],
    );
  }
}
