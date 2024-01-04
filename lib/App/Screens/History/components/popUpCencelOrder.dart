import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryButton.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

class PopUpcancelOrder extends StatelessWidget {
  const PopUpcancelOrder({super.key});

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
              HeightC(50),
              Container(
                height: 55,
                width: 155,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          ImagePath.car1,
                        ),
                        fit: BoxFit.fill)),
              ),
              HeightC(15),
              Container(
                margin: EdgeInsets.all(5),
                width: 210,
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur. Arcu netus feugiat quam nec phasellus sed.Lorem ipsum dolor sit amet consectetur.",
                  style: MyTextStyle.heading_500_12__Grey_textstyle,
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                children: [
                  PrimaryButton(
                    text: MyText.continue1,
                    onTap: () {
                      // GoRouter.of(context).goNamed(MyRoutes.MainScreen);
                    },
                    color: MyColors.blue_clr,
                  ),
                  PrimaryButton(
                    text: MyText.continue1,
                    onTap: () {
                      // GoRouter.of(context).goNamed(MyRoutes.MainScreen);
                    },
                    color: MyColors.blue_clr,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
