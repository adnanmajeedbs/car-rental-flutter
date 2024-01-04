import 'package:chartercar/App/Screens/notification/model/notificationModel.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';

import '../../../../utils/Text/text.dart';
import '../../../../utils/Theme/text_Theme_Data.dart';
import '../../../Common/DynamicSpace/SizeBoxC.dart';
import '../../../Common/appBar/custom_App_Bar.dart';
import '../../../Common/textHeading/600/textHeading600_16_Black.dart';

// checkbox_terms_and_condition_textstyle
// notification_Text_Blue_TextStyle
class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //pageBar
              CustomAppBar(
                title: MyText.notification,
              ),
              HeightC(22),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextHeading_600_16_Black(text: MyText.today),

                          HeightC(13),
                          Container(
                            // height: MediaQuery.of(context).size.height,
                            height: 67 * notificationList.length.toDouble(),
                            child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: notificationList.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.all(12),
                                  margin: EdgeInsets.symmetric(vertical: 3),
                                  decoration: BoxDecoration(
                                      color: MyColors.white_clr,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            notificationList[index].titel,
                                            style: MyTextStyle
                                                .notification_Text_Blue_TextStyle,
                                          ),
                                          Container(
                                            width: 55,
                                            child: Text(
                                              notificationList[index].time,
                                              style: MyTextStyle
                                                  .checkbox_terms_and_condition_textstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                      HeightC(7),
                                      Text(
                                        notificationList[index].text,
                                        style: MyTextStyle
                                            .checkbox_terms_and_condition_textstyle,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          //  week
                          HeightC(20),
                          TextHeading_600_16_Black(text: MyText.thisweek),

                          HeightC(13),
                          Container(
                            // height: MediaQuery.of(context).size.height,
                            height: 67 * notificationList.length.toDouble(),
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.all(0),
                              itemCount: notificationList.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.all(12),
                                  margin: EdgeInsets.symmetric(vertical: 3),
                                  decoration: BoxDecoration(
                                      color: MyColors.white_clr,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            notificationList[index].titel,
                                            style: MyTextStyle
                                                .notification_Text_Blue_TextStyle,
                                          ),
                                          Container(
                                            width: 55,
                                            child: Text(
                                              notificationList[index].time,
                                              style: MyTextStyle
                                                  .checkbox_terms_and_condition_textstyle,
                                            ),
                                          )
                                        ],
                                      ),
                                      HeightC(7),
                                      Text(
                                        notificationList[index].text,
                                        style: MyTextStyle
                                            .checkbox_terms_and_condition_textstyle,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          HeightC(22),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
