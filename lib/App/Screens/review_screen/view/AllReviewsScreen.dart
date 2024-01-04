import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/appBar/custom_App_Bar.dart';
import 'package:chartercar/App/Common/textHeading/600/textHeading600_12%20_grey.dart';
import 'package:chartercar/App/Common/textHeading/600/textHeading600_16_Black.dart';
import 'package:chartercar/App/Screens/carDetails/model/reviewModel.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';

class AllReviewsScreen extends StatelessWidget {
  const AllReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            //appBar
            CustomAppBar(
              title: MyText.review,
              isTextAdd: true,
              rewiewNo: reviewList.length + 1,
            ),
            // reviewList
            Expanded(
                child: SingleChildScrollView(
                    child: Column(
              children: [
                Container(
                  height: (147 * reviewList.length.toDouble()),
                  // height: 500,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: reviewList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 15),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 14),
                            decoration: BoxDecoration(
                                color: MyColors.white_clr,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                          padding:
                                              const EdgeInsets.only(left: 14),
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
                                                  text: reviewList[index]
                                                      .position),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    //container
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        TextHeading_600_12_Grey(
                                            text: reviewList[index].time),
                                        HeightC(4),
                                        Container(
                                          height: 14,
                                          width: 74,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      ImagePath.star),
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
                                            MediaQuery.of(context).size.width /
                                                1.7,
                                        child: TextHeading_600_12_Grey(
                                          text: reviewList[index].review,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            )))
          ],
        ),
      )),
    );
  }
}
