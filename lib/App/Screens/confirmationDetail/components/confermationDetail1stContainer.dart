import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Text/text.dart';
import '../../../../utils/vibration/vibrattion.dart';
import '../../../Common/detailBarSteps.dart/detailBarSteps.dart';
import '../provider/confirmationDetailProvider.dart';

class Confirmation1stContainer extends StatelessWidget {
  const Confirmation1stContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 17, bottom: 22),
      decoration: BoxDecoration(
          color: MyColors.white_clr, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          DetailBarSteps(
              titel: MyText.confirmation,
              text: MyText.we_are_getting_to_end,
              step: MyText.Step_4_of_4),
          HeightC(8),
          //1st box
          Consumer<ConfirmationDetailProvider>(
              builder: (context, value, child) {
            return Container(
              height: 64,
              decoration: BoxDecoration(
                  color: MyColors.appClr,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      vibrate();
                      value.agreeWithSendingNoSpam();
                    },
                    icon: value.agreeWithNoSpam
                        ? Icon(
                            Icons.check_box_rounded,
                          )
                        : Icon(
                            Icons.check_box_outline_blank_rounded,
                          ),
                    color: value.agreeWithNoSpam
                        ? MyColors.blue_clr
                        : MyColors.light_grey_90A3BF_Color,
                    iconSize: 22,
                  ),
                  Container(
                    width: 230,
                    child: Text(
                      MyText.i_agree_with_sending_an_Marketing,
                      style: MyTextStyle.heading_500_12__Black_textstyle,
                    ),
                  )
                ],
              ),
            );
          }),
          HeightC(20),
          //2nd box
          Consumer<ConfirmationDetailProvider>(
              builder: (context, value, child) {
            return Container(
              height: 64,
              decoration: BoxDecoration(
                  color: MyColors.appClr,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      vibrate();
                      value.agreeWithTermCondition();
                    },
                    icon: value.agreeWithCondition
                        ? Icon(
                            Icons.check_box_rounded,
                          )
                        : Icon(
                            Icons.check_box_outline_blank_rounded,
                          ),
                    color: value.agreeWithCondition
                        ? MyColors.blue_clr
                        : MyColors.light_grey_90A3BF_Color,
                    iconSize: 22,
                  ),
                  Container(
                    width: 230,
                    child: Text(
                      MyText
                          .i_agree_with_our_terms_and_conditions_confirmation_detail,
                      style: MyTextStyle.heading_500_12__Black_textstyle,
                    ),
                  )
                ],
              ),
            );
          }), //2nd box
        ],
      ),
    );
  }
}
