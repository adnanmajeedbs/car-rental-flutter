// ignore_for_file: unused_import

import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryButton.dart';
import 'package:chartercar/App/Screens/carDetails/components/reviewContainer.dart';
import 'package:chartercar/App/Screens/carDetails/provider/car_Detail_provider.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../utils/vibration/vibrattion.dart';
import '../../../Common/appBar/custom_App_Bar.dart';
import '../../../Common/textHeading/600/textHeading600_12_Black.dart';
import '../../recents/model/recentModel.dart';
import '../model/reviewModel.dart';

class CarDetail extends StatelessWidget {
  const CarDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height +
              (120 * reviewList.length.toDouble()),
          child: Column(
            children: [
              //appbarLogo

              CustomAppBar(
                title: MyText.carDetails,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //image container
                      //stack
                      Stack(
                        children: [
                          Container(
                            height: 265,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImagePath.carDetail),
                                    fit: BoxFit.cover)),
                          ),
                          //car detail
                          Consumer<CarDetailProvider>(
                              builder: (context, value, child) {
                            return Container(
                              // height: MediaQuery.of(context).size.height - 110,
                              width: MediaQuery.of(context).size.width,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    HeightC(200),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 18),
                                      child: Container(
                                        height: 345,
                                        decoration: BoxDecoration(
                                            color: MyColors.white_clr,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 16,
                                              left: 16,
                                              bottom: 16,
                                              top: 18),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                recentList[value.currentIndex]
                                                    .carName,
                                                style: MyTextStyle
                                                    .heading_700_20_textStyle,
                                              ),
                                              HeightC(6),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 14,
                                                    width: 75,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                ImagePath.star),
                                                            fit: BoxFit
                                                                .contain)),
                                                  ),
                                                  WidthC(8),
                                                  Text(
                                                    "4.9",
                                                    style: MyTextStyle
                                                        .heading_500_12__Grey_textstyle,
                                                  )
                                                ],
                                              ),
                                              HeightC(10),
                                              Container(
                                                child: Text(
                                                  "NISMO has become the embodiment of Nissan's outstanding performance, inspired by the most unforgiving proving ground, the \"race track\".",
                                                  style: MyTextStyle
                                                      .car_Detail_paragraph_textstyle,
                                                ),
                                              ),
                                              HeightC(20),
                                              //row of liter manual capasity
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                          ImagePath.liter),
                                                      WidthC(4),
                                                      Text(
                                                        recentList[value
                                                                .currentIndex]
                                                            .gasoline,
                                                        style: MyTextStyle
                                                            .recent_all_textstyle,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                          ImagePath.manual),
                                                      WidthC(4),
                                                      Text(
                                                        recentList[value
                                                                .currentIndex]
                                                            .driveManual,
                                                        style: MyTextStyle
                                                            .recent_all_textstyle,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                          ImagePath.capasity),
                                                      WidthC(4),
                                                      Text(
                                                        recentList[value
                                                                .currentIndex]
                                                            .capasity,
                                                        style: MyTextStyle
                                                            .recent_all_textstyle,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              HeightC(18),
                                              //
                                              //
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: 130,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        //cartype steering
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                              "Type Car",
                                                              style: MyTextStyle
                                                                  .car_Detail_typecar_textstyle,
                                                            ),
                                                            HeightC(15),
                                                            Text(
                                                              "Steering",
                                                              style: MyTextStyle
                                                                  .car_Detail_typecar_textstyle,
                                                            )
                                                          ],
                                                        ),
                                                        HeightC(16),
                                                        //sportss manual
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            TextHeading_600_12_Black(
                                                              text: recentList[value
                                                                      .currentIndex]
                                                                  .catagoury,
                                                            ),
                                                            HeightC(16),
                                                            TextHeading_600_12_Black(
                                                              text: recentList[value
                                                                      .currentIndex]
                                                                  .driveManual,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  WidthC(5),
                                                  Container(
                                                    width: 130,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        //capacity gasoline
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                              "Capacity",
                                                              style: MyTextStyle
                                                                  .car_Detail_typecar_textstyle,
                                                            ),
                                                            HeightC(16),
                                                            Text(
                                                              "Gasoline",
                                                              style: MyTextStyle
                                                                  .car_Detail_typecar_textstyle,
                                                            )
                                                          ],
                                                        ),
                                                        HeightC(16),
                                                        //2 Person 70L
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            TextHeading_600_12_Black(
                                                              text: recentList[value
                                                                      .currentIndex]
                                                                  .capasity,
                                                            ),
                                                            HeightC(16),
                                                            TextHeading_600_12_Black(
                                                              text: recentList[value
                                                                      .currentIndex]
                                                                  .gasoline,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              //
                                              //
                                              HeightC(20),
                                              //button
                                              PrimaryButton(
                                                  text: MyText.rentNow,
                                                  onTap: () {
                                                    GoRouter.of(context)
                                                        .pushNamed(MyRoutes
                                                            .userDetail);
                                                  },
                                                  color: MyColors.blue_clr)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                      HeightC(16),
                      //container of rewiew
                      ReviewContainerCarDetail()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
