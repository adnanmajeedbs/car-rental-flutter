import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryTextButton.dart';
import 'package:chartercar/App/Common/MyButtons/thirdButton.dart';
import 'package:chartercar/App/Screens/recents/model/recentModel.dart';
import 'package:chartercar/App/Screens/Home%20Screen/provider/searchProvider.dart';
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

import '../../../Common/textHeading/600/textHeading600_16_Black.dart';
import '../../favourite/provider/favouriteProvider.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // IconButton(onPressed: onPressed, icon: icon, splashRadius: ,),
              // TextButton(onPressed: (){}, child: Text("hello"),splashRadius )
              Text(
                MyText.recent,
                style: MyTextStyle.categories_textStyle,
              ),
              PrimaryTextButton(
                  text: MyText.see_all_categories,
                  onTap: () {
                    vibrate();
                    GoRouter.of(context)
                        .pushNamed(MyRoutes.recentSeeAllAndSearch);
                  },
                  textStyle: MyTextStyle.heading_500_14__Grey_textstyle),
            ],
          ),
        ),
//container
        Container(
          height: 286,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 2),
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: recentList.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 15),
                  child: Consumer<RecentSearchProvider>(
                    builder: (context, value, child) {
                      return Consumer<CarDetailProvider>(
                          builder: (context, value, child) {
                        return Container(
                          width: 240,
                          decoration: BoxDecoration(
                            color: MyColors.white_clr,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: MyColors.light_grey_90A3BF_Color,
                            //     blurRadius: 0.5,
                            //     offset: Offset(0.5, 0.1),
                            //     // offset: Offset(7, 8),
                            //   ),
                            // ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
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
                                        TextHeading_600_16_Black(
                                            text: recentList[index].carName),
                                        Text(
                                          recentList[index].catagoury,
                                          style:
                                              MyTextStyle.recent_all_textstyle,
                                        ),
                                      ],
                                    ),
                                    // Image.asset(ImagePath.like),
                                    //favourite
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
                                HeightC(28),
                                //image
                                Container(
                                  height: 56,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                      recentList[index].image,
                                    )),
                                  ),
                                ),
                                HeightC(28),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(ImagePath.liter),
                                        Text(
                                          recentList[index].gasoline,
                                          style:
                                              MyTextStyle.recent_all_textstyle,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(ImagePath.manual),
                                        Text(
                                          recentList[index].driveManual,
                                          style:
                                              MyTextStyle.recent_all_textstyle,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(ImagePath.capasity),
                                        Text(
                                          recentList[index].capasity,
                                          style:
                                              MyTextStyle.recent_all_textstyle,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                HeightC(48),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      recentList[index].price,
                                      style: MyTextStyle
                                          .categoriesText_textStyle_two,
                                    ),
                                    ThirdButton(
                                        text: MyText.rental_Now,
                                        onTap: () {
                                          vibrate();
                                          value.changeCurrentIndex(index);
                                          GoRouter.of(context)
                                              .pushNamed(MyRoutes.carDetail);
                                        },
                                        textStyle:
                                            MyTextStyle.rental_Car_2_textStyle,
                                        buttonColor: MyColors.blue_clr),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      });
                    },
                  ));
            },
          ),
        )
        //
      ],
    );
  }
}
