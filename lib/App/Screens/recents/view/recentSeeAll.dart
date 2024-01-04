import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Screens/Home%20Screen/components/gridDeligate.dart';
import 'package:chartercar/App/Screens/favourite/provider/favouriteProvider.dart';
import 'package:chartercar/App/Screens/recents/components/textFeild.dart';
import 'package:chartercar/App/Screens/recents/model/recentModel.dart';
import 'package:chartercar/App/Screens/carDetails/provider/car_Detail_provider.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../Common/MyButtons/thirdButton.dart';
import '../../../Common/textHeading/600/textHeading600_14_Black.dart';

class RecentSeeAllAndSearch extends StatelessWidget {
  const RecentSeeAllAndSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: RecentSearchTextFeild()),
                        //Filter container
                        GestureDetector(
                          onTap: () {
                            vibrate();
                            GoRouter.of(context)
                                .pushNamed(MyRoutes.filterScreen);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: GestureDetector(
                              child: Container(
                                height: 48,
                                width: 48,
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: MyColors.border_container),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(ImagePath.filter),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //
                //
                //
                //
                //GridView.builder
                // HeightC(17),
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.only(right: 20, left: 20, top: 17),
                    gridDelegate: MyCustomGridDelegate(
                      tileWidth: (MediaQuery.of(context).size.width / 2) - 24,
                      tileHeight: 226,
                    ),
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemCount: recentList.length,
                    itemBuilder: (context, index) {
                      return Consumer<CarDetailProvider>(
                        builder: (context, value, child) {
                          return Container(
                            decoration: BoxDecoration(
                              color: MyColors.white_clr,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextHeading_600_14_Black(
                                              text: recentList[index].carName),
                                          Text(
                                            recentList[index].catagoury,
                                            style: MyTextStyle
                                                .recent_all_2ndPage_textstyle,
                                          )
                                        ],
                                      ),
                                      // GestureDetector(
                                      //   onTap: () {
                                      //     value.favourite();
                                      //   },
                                      //   child: Image(
                                      //       image: value.like
                                      //           ? AssetImage(ImagePath.unLike)
                                      //           : AssetImage(ImagePath.like)),
                                      // ),
                                      Consumer<FavouriteProvider>(
                                          builder: (context, favourite, child) {
                                        return GestureDetector(
                                          onTap: () {
                                            vibrate();
                                            favourite.toggleFovourite(
                                                recentList[index]);
                                          },
                                          child: Container(
                                            width: 24,
                                            child: Image(
                                                image: favourite.favouriteList
                                                        .contains(
                                                            recentList[index])
                                                    ? AssetImage(ImagePath.like)
                                                    : AssetImage(
                                                        ImagePath.unLike)),
                                          ),
                                        );
                                      }),
                                    ],
                                  ),
                                  //462
                                  HeightC(16),
                                  //image
                                  Container(
                                    height: 46,
                                    width: 98,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                        recentList[index].image,
                                      )),
                                    ),
                                  ),
                                  HeightC(14),
                                  //liter manual capacity
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(ImagePath.liter),
                                              Text(
                                                recentList[index].gasoline,
                                                style: MyTextStyle
                                                    .recent_all_2ndPage_textstyle,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(ImagePath.manual),
                                              Text(
                                                recentList[index].driveManual,
                                                style: MyTextStyle
                                                    .recent_all_2ndPage_textstyle,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      HeightC(14),
                                      Row(
                                        children: [
                                          Image.asset(ImagePath.capasity),
                                          Text(
                                            recentList[index].capasity,
                                            style: MyTextStyle
                                                .recent_all_2ndPage_textstyle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  HeightC(15),
                                  //  button+price
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ThirdButton(
                                          height: 29,
                                          width: 78,
                                          text: MyText.rental_Now,
                                          onTap: () {
                                            vibrate();
                                            value.changeCurrentIndex(index);
                                            GoRouter.of(context)
                                                .pushNamed(MyRoutes.carDetail);
                                          },
                                          textStyle: MyTextStyle
                                              .rental_Car_2_textStyle,
                                          buttonColor: MyColors.blue_clr),
                                      WidthC(4),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "/day",
                                            style: MyTextStyle
                                                .recent_all_day_textstyle,
                                          ),
                                          Text(
                                            recentList[index].price,
                                            style: MyTextStyle
                                                .categoriesText_textStyle_two,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
