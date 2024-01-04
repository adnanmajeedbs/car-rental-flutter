import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/vibration/vibrattion.dart';

class TextButtonFilter extends StatelessWidget {
  const TextButtonFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                vibrate();
                GoRouter.of(context).pushNamed(MyRoutes.recentSeeAllAndSearch);
              },
              child: Container(
                height: 48,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: MyColors.border_container),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(
                            ImagePath.searchImage,
                          ),
                          // scale: 1.8,
                        )),
                      ),
                      WidthC(8),
                      Text(
                        MyText.search_someThing_here,
                        style: MyTextStyle.search_something_here_textStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //Filter container
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: GestureDetector(
              onTap: () {
                vibrate();
                GoRouter.of(context).pushNamed(MyRoutes.filterScreen);
              },
              child: Container(
                height: 48,
                width: 48,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: MyColors.border_container),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(ImagePath.filter),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
