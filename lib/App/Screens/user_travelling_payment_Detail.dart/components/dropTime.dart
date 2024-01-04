import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/components/travlingDetaialCustomGreyContainer.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/provider/user_travelling_payment_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../utils/Theme/colors_theme_data.dart';

class DropTime extends StatelessWidget {
  DropTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<UserTravellingPaymentDetailProvider>(
      builder: (context, value, child) {
        return GestureDetector(
          onTap: () async {
            final TimeOfDay? dropTime = await showTimePicker(
              context: context,
              initialTime: value.selectedTime,
              initialEntryMode: TimePickerEntryMode.dial,
              builder: (BuildContext context, Widget? child) {
                return Theme(
                  data: ThemeData.light().copyWith(
                    colorScheme: ColorScheme.light(
                      primary: MyColors.blue_clr,
                    ),
                    buttonTheme:
                        ButtonThemeData(textTheme: ButtonTextTheme.primary),
                  ),
                  child: child!,
                );
              },
            );
            //  showTimePicker(
            //   context: context,
            //   initialTime: value.selectedTime,
            //   initialEntryMode: TimePickerEntryMode.dial,
            // );
            if (dropTime != null) {
              value.changeDropTime(context, dropTime);
            }
          },
          child: Column(
            children: [
              TravlingDetaialCustomGreyContainer(
                text: value.dropTime,
                icon: Icon(
                  Icons.access_time_rounded,
                  color: MyColors.light_grey_90A3BF_Color,
                  size: 20,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
