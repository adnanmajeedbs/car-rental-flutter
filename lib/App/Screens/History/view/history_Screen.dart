import 'package:chartercar/App/Screens/History/components/history_Container.dart';
import 'package:chartercar/App/Screens/review_screen/provider/rating_Provider.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 55,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: MyColors.white_clr,
              child: Center(
                  child: Text(
                MyText.history,
                style: MyTextStyle.heading_600_16_textStyle_two,
              )),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: historyTileModelList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        right: 20.0, top: 15, left: 20, bottom: 15),
                    child: HistoryContainer(
                      index: index,
                      historyTileModelList: historyTileModelList,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
