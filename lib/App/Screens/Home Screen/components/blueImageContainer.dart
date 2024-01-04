import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/thirdButton.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../utils/vibration/vibrattion.dart';

class BlueImageContainer extends StatelessWidget {
  const BlueImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          WidthC(20),
          Container(
            width: 320,
            height: 120,
            decoration: BoxDecoration(
              color: MyColors.blue_clr,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image:
                      AssetImage("assets/images/home/container_backGround.png"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //main Text
                  Text(
                    MyText.the_Best_Platform_for_Car_Rental,
                    style: MyTextStyle.the_Best_Platform_for_Car_Rental,
                  ),
                  HeightC(4),
                  Container(
                    width: 292,
                    child: Text(
                      MyText.ease_of_doing_a_car_rental_safely_lines,
                      style: MyTextStyle
                          .ease_of_doing_a_car_rental_safely_lines_textStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ThirdButton(
                          text: MyText.rental_Car,
                          onTap: () {
                            vibrate();
                            GoRouter.of(context).pushNamed(MyRoutes.nasa);
                          },
                          textStyle: MyTextStyle.rental_Car_textStyle,
                          buttonColor: MyColors.white_clr),
                      Container(
                        height: 56,
                        width: 196,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/home/Car.png"),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          WidthC(20)
        ],
      ),
    );
  }
}
