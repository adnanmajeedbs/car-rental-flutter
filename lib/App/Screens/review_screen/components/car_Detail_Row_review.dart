import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Screens/History/models/history_Tile_Model.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarDetalRowReview extends StatelessWidget {
  HistoryTileModel historyTileModel;
  CarDetalRowReview({super.key, required this.historyTileModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            // fuel
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(ImagePath.liter),
                    WidthC(4),
                    Text(
                      historyTileModel.engine,
                      style: MyTextStyle.recent_all_textstyle,
                    ),
                  ],
                ),
                // transmittion
                Row(
                  children: [
                    Image.asset(ImagePath.manual),
                    WidthC(4),
                    Text(
                      historyTileModel.transmition,
                      style: MyTextStyle.recent_all_textstyle,
                    ),
                  ],
                ),
                //  capicity
                Row(
                  children: [
                    Image.asset(ImagePath.capasity),
                    WidthC(4),
                    Text(
                      '${historyTileModel.noOfSeats} People',
                      style: MyTextStyle.recent_all_textstyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
