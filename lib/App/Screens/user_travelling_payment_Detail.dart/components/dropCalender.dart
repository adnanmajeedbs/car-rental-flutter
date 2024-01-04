import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/components/travlingDetaialCustomGreyContainer.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/provider/user_travelling_payment_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Theme/colors_theme_data.dart';
import '../../../../utils/vibration/vibrattion.dart';

class DropCalander extends StatelessWidget {
  const DropCalander({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserTravellingPaymentDetailProvider>(
        builder: (context, value, child) {
      return GestureDetector(
        onTap: () {
          vibrate();
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Container(
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        child: CalendarDatePicker(
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(3000),
                          onDateChanged: (date) {
                            value.changeDropDate(context, date);
                          },
                          selectableDayPredicate: (DateTime date) {
                            return true; // Add your date filtering logic if needed
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Column(
          children: [
            TravlingDetaialCustomGreyContainer(
              text: value.dropDate,
              icon: Icon(
                Icons.date_range_rounded,
                color: MyColors.light_grey_90A3BF_Color,
                size: 20,
              ),
            ),
          ],
        ),
      );
    });
  }
}
