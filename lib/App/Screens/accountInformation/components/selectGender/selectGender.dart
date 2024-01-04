import 'package:chartercar/App/Screens/accountInformation/provider/selectGender.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectGender extends StatelessWidget {
  const SelectGender({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SelectGenderProvider>(
      builder: (context, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                vibrate();
                value.isSelectedGender(0);
              },
              child: Container(
                padding: EdgeInsets.all(18),
                height: 54,
                width: MediaQuery.of(context).size.width * 3 / 7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.white_clr),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyText.male,
                      style: MyTextStyle.terms_and_condition_text_textstyle,
                    ),
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 200),
                      child: Icon(Icons.radio_button_checked_outlined,
                          color: value.index == 0
                              ? const Color.fromRGBO(53, 99, 233, 1)
                              : MyColors.genderUnselect),
                    ),
                  ],
                ),
              ),
            ),
            //women
            GestureDetector(
              onTap: () {
                vibrate();
                value.isSelectedGender(1);
              },
              child: Container(
                padding: EdgeInsets.all(18),
                height: 54,
                width: MediaQuery.of(context).size.width * 3 / 7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.white_clr),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyText.female,
                      style: MyTextStyle.terms_and_condition_text_textstyle,
                    ),
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 200),
                      child: Icon(Icons.radio_button_checked_outlined,
                          color: value.index == 1
                              ? MyColors.blue_clr
                              : MyColors.genderUnselect),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
