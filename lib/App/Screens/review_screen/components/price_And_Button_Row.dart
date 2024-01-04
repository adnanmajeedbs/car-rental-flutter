import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/textHeading/500/textHeading_500_14_Grey%20.dart';
import 'package:chartercar/App/Screens/History/models/history_Tile_Model.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PriceAndButtonRowOfReview extends StatelessWidget {
  HistoryTileModel historyTileModel;
  PriceAndButtonRowOfReview({super.key, required this.historyTileModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // price row
          Row(
            children: [
              TextHeading_500_14_Grey(text: 'Price'),
              WidthC(15),
              Text(
                "Rs ${historyTileModel.price}0  ",
                style: MyTextStyle.heading_700_14_textStyle_two,
              ),
              TextHeading_500_14_Grey(text: '/day'),
            ],
          ),
        ],
      ),
    );
  }
}
