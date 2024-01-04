import 'package:flutter/cupertino.dart';

import '../DynamicSpace/SizeBoxC.dart';
import '../textHeading/600/textHeading600_12 _grey.dart';
import '../textHeading/600/textHeading600_16_Black.dart';

class DetailBarSteps extends StatelessWidget {
  final String titel;
  final String text;
  final String step;

  const DetailBarSteps(
      {super.key, required this.titel, required this.text, required this.step});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(child: TextHeading_600_16_Black(text: titel)),
            HeightC(8),
            Container(width: 198, child: TextHeading_600_12_Grey(text: text)),
            HeightC(24),
          ],
        ),
        //container
        Column(
          children: [
            TextHeading_600_12_Grey(text: step),
          ],
        ),
      ],
    );
  }
}
