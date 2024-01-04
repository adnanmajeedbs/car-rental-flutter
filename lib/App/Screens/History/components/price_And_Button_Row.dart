import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/thirdButton.dart';
import 'package:chartercar/App/Common/textHeading/500/textHeading_500_14_Grey%20.dart';
import 'package:chartercar/App/Screens/History/models/history_Tile_Model.dart';
import 'package:chartercar/App/Screens/review_screen/provider/rating_Provider.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PriceAndButtonRow extends StatelessWidget {
  List<HistoryTileModel> historyTileModel;
  final int index;
  PriceAndButtonRow(
      {super.key, required this.index, required this.historyTileModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // price row
          Row(
            children: [
              TextHeading_500_14_Grey(text: 'Price'),
              WidthC(15),
              Text(
                "Rs ${historyTileModelList[index].price}0  ",
                style: MyTextStyle.heading_700_14_textStyle_two,
              ),
              TextHeading_500_14_Grey(text: '/day'),
            ],
          ),
          // button
          Consumer<RatingProvider>(builder: (context, value, child) {
            return ThirdButton(
              text: historyTileModel[index].status,
              buttonColor: historyTileModel[index].status == 'Return'
                  ? MyColors.return_button_clr
                  : MyColors.blue_clr,
              onTap: () {
                historyTileModel[index].status == 'Return'
                    ? value.changeIndex(index)
                    : null;
                historyTileModel[index].status == 'Return'
                    ? context.pushNamed(MyRoutes.reviewScreen, extra: {
                        'historyTileModel': historyTileModel[index],
                      })
                    : context.pushNamed(MyRoutes.travellingDetailView);
              },
              height: 29,
              width: 84,
            );
          }),
        ],
      ),
    );
  }
}
