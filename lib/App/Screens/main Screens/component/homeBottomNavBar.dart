import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/svgImages/svgImages.dart';
import 'package:flutter/material.dart';

import 'bottomNavBarIcons.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // only(
        //   topLeft: Radius.circular(10),
        //   topRight: Radius.circular(10),

        color: MyColors.white_clr,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(5, 6),
          ),
        ],
      ),
      height: 55,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BottomNavBarIcons(index: 0, image: SvgImages.homeIcon),
          BottomNavBarIcons(index: 1, image: SvgImages.historyIcon),
          BottomNavBarIcons(index: 2, image: SvgImages.favouriteIcon),
          BottomNavBarIcons(index: 3, image: SvgImages.profileIcon),
        ],
      ),
    );
  }
}
//

//