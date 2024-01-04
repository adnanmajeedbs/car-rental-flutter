import 'package:chartercar/App/Screens/favourite/provider/favouriteProvider.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Images/ImagePath.dart';
import '../../../../utils/Routes/routes_constant.dart';
import '../../../../utils/Theme/colors_theme_data.dart';
import '../../../../utils/Theme/text_Theme_Data.dart';
import '../../../../utils/vibration/vibrattion.dart';
import '../../../Common/DynamicSpace/SizeBoxC.dart';
import '../../../Common/MyButtons/thirdButton.dart';
import '../../../Common/textHeading/600/textHeading600_14_Black.dart';
import '../../../Common/textHeading/600/textHeading600_16_Black.dart';
import '../../Home Screen/components/gridDeligate.dart';
import '../../carDetails/provider/car_Detail_provider.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 55,
          child: Consumer<FavouriteProvider>(builder: (context, value, child) {
            return Column(
              children: [
                Container(
                  color: MyColors.white_clr,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 22, bottom: 22, left: 20, right: 20),
                    child: Center(
                      child: TextHeading_600_16_Black(
                        text: MyText.favourite,
                      ),
                    ),
                  ),
                ),

                //builder
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.only(right: 20, left: 20, top: 17),
                    gridDelegate: MyCustomGridDelegate(
                      tileWidth: (MediaQuery.of(context).size.width / 2) - 24,
                      tileHeight: 225,
                    ),
                    // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //     childAspectRatio: 0.68,
                    //     mainAxisSpacing: 10,
                    //     crossAxisCount: 2, // Number of columns
                    //     crossAxisSpacing: 10.0),
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemCount: value.favouriteList.length,
                    itemBuilder: (context, index) {
                      return Consumer<CarDetailProvider>(
                        builder: (context, CarDetailProvider, child) {
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
                                              text: value.favouriteList[index]
                                                  .carName),
                                          Text(
                                            value
                                                .favouriteList[index].catagoury,
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
                                                value.favouriteList[index]);
                                          },
                                          child: Container(
                                            width: 24,
                                            child: Image(
                                                image: favourite.favouriteList
                                                        .contains(
                                                            value.favouriteList[
                                                                index])
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
                                        value.favouriteList[index].image,
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
                                                value.favouriteList[index]
                                                    .gasoline,
                                                style: MyTextStyle
                                                    .recent_all_2ndPage_textstyle,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(ImagePath.manual),
                                              Text(
                                                value.favouriteList[index]
                                                    .driveManual,
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
                                            value.favouriteList[index].capasity,
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
                                            CarDetailProvider
                                                .changeCurrentIndex(index);
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
                                            value.favouriteList[index].price,
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
            );
          }),
        ),
      ),
    );
  }
}
