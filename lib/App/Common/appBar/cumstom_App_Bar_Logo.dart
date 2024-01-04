import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/Images/ImagePath.dart';
import '../DynamicSpace/SizeBoxC.dart';

class Custom_App_Bar_Logo extends StatelessWidget {
  const Custom_App_Bar_Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeightC(12),
        Row(
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
            Center(
              child: Container(
                height: 39,
                width: 164,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(ImagePath.AppBarLogo),
                  fit: BoxFit.fill,
                )),
              ),
            ),
// AppBarLogo

            Container(
              width: 20,
            ),
          ],
        ),
        HeightC(27),
      ],
    );
  }
}
