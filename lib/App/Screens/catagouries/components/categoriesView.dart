import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryTextButton.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/vibration/vibrattion.dart';
import '../model/categoriesModel.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                MyText.categories,
                style: MyTextStyle.categories_textStyle,
              ),
              PrimaryTextButton(
                  text: MyText.see_all_categories,
                  onTap: () {
                    vibrate();
                    GoRouter.of(context).pushNamed(MyRoutes.categoriesSeeAll);
                  },
                  textStyle: MyTextStyle.heading_500_14__Grey_textstyle),
            ],
          ),
        ),
        Container(
          height: 65,
          child: ListView.builder(
            padding: EdgeInsets.only(top: 1),
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: categoriesList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 15),
                child: Column(
                  children: [
                    Container(
                      height: 41,
                      width: 41,
                      decoration: BoxDecoration(
                        color: MyColors.white_clr,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.light_grey_90A3BF_Color,
                            blurRadius: 0.5,
                            offset: Offset(0.9, 0.5),
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage(
                          categoriesList[index].image,
                        )),
                      ),
                    ),
                    HeightC(6),
                    Text(
                      categoriesList[index].text,
                      style: MyTextStyle.categoriesText_textStyle,
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
