import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/vibration/vibrattion.dart';
import '../../../Common/textHeading/600/textHeading600_16_Black.dart';
import '../model/categoriesModel.dart';

class CategoriesSeeAll extends StatelessWidget {
  const CategoriesSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 110,
              color: MyColors.white_clr,
              child: Padding(
                padding: const EdgeInsets.only(top: 64, left: 22, bottom: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        vibrate();
                        GoRouter.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 20,
                      ),
                    ),

                    // AppBarLogo
                    Center(
                        child:
                            TextHeading_600_16_Black(text: MyText.categories)),
                    WidthC(14),
                  ],
                ),
              ),
            ),
            //
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns
                  ),
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 77,
                          width: 77,
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
                          style: MyTextStyle.categoriesText_textStyle_two,
                        ),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
