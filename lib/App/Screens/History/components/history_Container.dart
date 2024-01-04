import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Screens/History/components/car_Detail_Row.dart';
import 'package:chartercar/App/Screens/History/components/pick_&_Drop_Points_Container.dart';
import 'package:chartercar/App/Screens/History/components/price_And_Button_Row.dart';
import 'package:chartercar/App/Screens/History/models/history_Tile_Model.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HistoryContainer extends StatelessWidget {
  List<HistoryTileModel> historyTileModelList;
  final int index;
  HistoryContainer(
      {super.key, required this.index, required this.historyTileModelList});

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
                historyTileModelList[index].carName,
                style: MyTextStyle.otp_time,
              ),
              WidthC(10),
              // car type
              Text(
                historyTileModelList[index].type,
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
                    historyTileModelList[index].image,
                  ),
                  fit: BoxFit.contain),
            ),
          ),
          HeightC(6),
          // Car  Detal  Row
          CarDetalRow(index: index, historyTileModelList: historyTileModelList),
          HeightC(20),
          // Pick & Drop Points Container
          PickDropPointsContainer(
              index: index, historyTileModelList: historyTileModelList),

          HeightC(20),
          PriceAndButtonRow(
              index: index, historyTileModel: historyTileModelList),
        ],
      ),
    );
  }
}
