import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Screens/main%20Screens/provider/provider.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class BottomNavBarIcons extends StatelessWidget {
  final String image;
  final int index;

  const BottomNavBarIcons(
      {super.key, required this.index, required this.image});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomBarNavBarProvider>(
      builder: (context, value, child) {
        return InkWell(
          onTap: () {
            value.changePage(index);
          },
          child: Container(
            width: 42,
            height: 42,
            child: Column(
              children: [
                // bottom Icon
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  child: SvgPicture.asset(
                    color: index == value.currentIndex
                        ? MyColors.blue_clr
                        : MyColors.light_grey_90A3BF_Color,
                    image,
                    width: 19,
                    height: index == value.currentIndex ? 22 : 20,
                  ),
                ),
                HeightC(6),

                //dot
                CircleAvatar(
                  radius: 5,
                  backgroundColor: index == value.currentIndex
                      ? MyColors.blue_clr
                      : Colors.transparent,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
//

//
