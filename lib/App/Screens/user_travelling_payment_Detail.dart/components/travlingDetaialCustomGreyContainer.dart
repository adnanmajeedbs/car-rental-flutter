import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';

import '../../../Common/textHeading/500/textHeading_500_12 _grey.dart';

class TravlingDetaialCustomGreyContainer extends StatelessWidget {
  final String text;
  final Icon icon;

  const TravlingDetaialCustomGreyContainer(
      {super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: MyColors.appClr, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextHeading_500_12_Grey(text: text),
          icon,
        ]),
      ),
    );
  }
}
