import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryTextButton.dart';
import 'package:chartercar/App/Common/MyButtons/thirdButton.dart';
import 'package:chartercar/App/Common/textHeading/600/textHeading600_16_Black.dart';
import 'package:chartercar/App/Screens/carDetails/model/reviewModel.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/Images/ImagePath.dart';
import '../../../Common/textHeading/600/textHeading600_12 _grey.dart';

class ReviewContainerCarDetail extends StatelessWidget {
  const ReviewContainerCarDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: MyColors.white_clr, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        MyText.review,
                        style: MyTextStyle.heading_700_20_textStyle,
                      ),
                      WidthC(12),
                      ThirdButton(
                        text: "${reviewList.length + 1}",
                        onTap: () {},
                        width: 44,
                      ),
                    ],
                  ),
                  PrimaryTextButton(
                      text: MyText.see_all_categories,
                      onTap: () {
                        vibrate();
                        GoRouter.of(context).pushNamed(MyRoutes.allReview);
                      },
                      textStyle: MyTextStyle.heading_500_14__Grey_textstyle),
                ],
              ),
              HeightC(24),
              // ReviewContainerCarDetail()
              //list of review
              Container(
                // height: (120 * reviewList.length.toDouble()),
                height: 240,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: reviewList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  //image
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                            reviewList[index].image,
                                          ),
                                          fit: BoxFit.cover,
                                        )),
                                  ),

                                  //column of name
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: TextHeading_600_16_Black(
                                            text: reviewList[index].name,
                                          ),
                                        ),
                                        HeightC(4),
                                        TextHeading_600_12_Grey(
                                            text: reviewList[index].position),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              //container
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  TextHeading_600_12_Grey(
                                      text: reviewList[index].time),
                                  HeightC(4),
                                  Container(
                                    height: 14,
                                    width: 74,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(ImagePath.star),
                                            fit: BoxFit.contain)),
                                  ),
                                  // Text(
                                  //   reviewList[index]
                                  //       .dateTime
                                  //       .toString(),
                                  //   style: MyTextStyle
                                  //       .profile_line_textstyle,
                                  // ),
                                ],
                              ),
                            ],
                          ),
                          HeightC(6),
                          Row(
                            children: [
                              Container(
                                height: 48,
                                width: 48,
                                // decoration: BoxDecoration(
                                //     shape: BoxShape.circle,
                                //     image: DecorationImage(
                                //       image: AssetImage(
                                //         reviewList[index].image,
                                //       ),
                                //       fit: BoxFit.cover,
                                //     )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  child: TextHeading_600_12_Grey(
                                    text: reviewList[index].review,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          HeightC(20)
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
