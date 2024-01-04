import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/textHeading/500/textHeading_500_14_Grey%20.dart';
import 'package:chartercar/App/Screens/History/models/history_Tile_Model.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PickDropPointsContainer extends StatelessWidget {
  List<HistoryTileModel> historyTileModelList;
  final int index;
  PickDropPointsContainer(
      {super.key, required this.index, required this.historyTileModelList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 108,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          // icons colum o
          Column(
            children: [
              HeightC(8),
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: MyColors.blue_clr, width: 4)),
              ),
              HeightC(4),
              Container(height: 67, child: Image.asset(ImagePath.location)),
            ],
          ),
          WidthC(10),
          // pick and drop location container
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // pic points
                Text(
                  historyTileModelList[index].pickPoint,
                  style: MyTextStyle.heading_700_15_textStyle_two,
                ),
                TextHeading_500_14_Grey(text: 'Pickup point'),
                // dotted line row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 100, child: Image.asset(ImagePath.dotted_Line)),
                    Text(
                      '${historyTileModelList[index].daysAgo} Days',
                      style: MyTextStyle.heading_700_14_textStyle_two,
                    ),
                    Container(
                        width: 100, child: Image.asset(ImagePath.dotted_Line)),
                  ],
                ),
                // drop points
                Text(
                  historyTileModelList[index].dropPoint,
                  style: MyTextStyle.heading_700_15_textStyle_two,
                ),
                TextHeading_500_14_Grey(text: 'Drop Off'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
