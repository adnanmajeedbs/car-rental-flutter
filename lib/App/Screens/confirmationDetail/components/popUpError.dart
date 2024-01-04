import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryButton.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

class PopUpError extends StatelessWidget {
  const PopUpError({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 360,
        // width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyColors.white_clr,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: MyColors.lightRed,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(150),
                        bottomRight: Radius.circular(150),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              ImagePath.checkDialog,
                            ),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    HeightC(20),
                    Text(
                      MyText.error,
                      style: MyTextStyle.heading_500_20__Black_textstyle,
                    ),
                    HeightC(10),
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 210,
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur. Arcu netus feugiat quam nec phasellus sed.",
                        style: MyTextStyle.heading_500_12__Grey_textstyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    HeightC(27),
                    PrimaryButton(
                      text: MyText.error,
                      onTap: () {},
                      color: MyColors.red,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
