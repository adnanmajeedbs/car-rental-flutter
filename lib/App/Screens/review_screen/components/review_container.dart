import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Screens/History/models/history_Tile_Model.dart';
import 'package:chartercar/App/Screens/review_screen/components/car_Detail_Row_review.dart';
import 'package:chartercar/App/Screens/review_screen/components/pick_&_Drop_Points_review.dart';
import 'package:chartercar/App/Screens/review_screen/components/price_And_Button_Row.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReviewContainer extends StatelessWidget {
  HistoryTileModel historyTileModel;
  ReviewContainer({super.key, required this.historyTileModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      // height: 306,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: MyColors.white_clr, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          // car name & type row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // car name
              Text(
                historyTileModel.carName,
                style: MyTextStyle.otp_time,
              ),
              WidthC(10),
              // car type
              Text(
                historyTileModel.type,
                style: MyTextStyle.Rich_Text_otp_timer_TextStyle,
              ),
            ],
          ),
          HeightC(20),
          // car image
          Container(
            height: 47,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    historyTileModel.image,
                  ),
                  fit: BoxFit.contain),
            ),
          ),
          HeightC(6),
          // Car  Detal  Row
          CarDetalRowReview(historyTileModel: historyTileModel),
          HeightC(20),
          // Pick & Drop Points Container
          PickDropPointsContainerReview(historyTileModel: historyTileModel),

          HeightC(20),
          PriceAndButtonRowOfReview(historyTileModel: historyTileModel),
        ],
      ),
    );
  }
}
