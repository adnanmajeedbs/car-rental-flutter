import 'package:chartercar/App/Common/detailBarSteps.dart/detailBarSteps.dart';
import 'package:chartercar/App/Common/dropDown/customDropDown.dart';
import 'package:chartercar/App/Common/toast_Message/toast_Message.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/components/dropCalender.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/components/dropTime.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/components/pickCalender.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/components/pickTime.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/provider/user_travelling_payment_Provider.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/svgImages/svgImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Routes/routes_constant.dart';
import '../../../../utils/Theme/colors_theme_data.dart';
import '../../../Common/DynamicSpace/SizeBoxC.dart';
import '../../../Common/MyButtons/PrimaryButton.dart';
import '../../../Common/appBar/custom_App_Bar.dart';
import '../../../Common/textHeading/600/textHeading600_14_Black.dart';
import '../../../Common/textHeading/600/textHeading600_16_Black.dart';

class TravellingDetailView extends StatelessWidget {
  TravellingDetailView({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  //appBar
                  CustomAppBar(
                    title: MyText.travelling_Details,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(children: [
                        HeightC(22), //

                        // container

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            // height: 516,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: MyColors.white_clr),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 16, right: 16, top: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // heading of rentl info etc
                                  DetailBarSteps(
                                      titel: MyText.rentalInfo,
                                      text:
                                          MyText.please_select_your_rental_date,
                                      step: MyText.step_2_of_4),
                                  // name textfeild
                                  //pickUp text
                                  Row(
                                    children: [
                                      SvgPicture.asset(SvgImages.pickUpMark),
                                      WidthC(8),
                                      TextHeading_600_16_Black(
                                          text: MyText.pick_Up),
                                    ],
                                  ),

                                  //location text
                                  //drodown of location

                                  Consumer<UserTravellingPaymentDetailProvider>(
                                    builder: (context, value, child) {
                                      return CustomDropDown(
                                          onTapTile: () {
                                            value.changePickSelectedIndex();
                                          },
                                          list: value.downLocationsList,
                                          onTap: () {
                                            value.tooglePickDropDown();
                                          },
                                          heading_Text: MyText.locations,
                                          isOpen: value.isPickDropdownOpen,
                                          dropdown_main_Text:
                                              value.pickHeading_Text);
                                    },
                                  ),

                                  HeightC(20),
                                  //date text
                                  TextHeading_600_14_Black(text: MyText.date),
                                  HeightC(12),
                                  // //dateCelender
                                  PickCalander(),
                                  HeightC(20),

                                  // //date text
                                  TextHeading_600_14_Black(text: MyText.time),
                                  HeightC(12),

                                  //time Picker
                                  PickTime(),
                                  HeightC(30),
                                  //DropOff text
                                  Row(
                                    children: [
                                      SvgPicture.asset(SvgImages.dropOffMark),
                                      WidthC(8),
                                      TextHeading_600_16_Black(
                                          text: MyText.drop_Off),
                                    ],
                                  ),
                                  HeightC(20),
                                  //location text
                                  //drodown of location
                                  //drodown of location

                                  Consumer<UserTravellingPaymentDetailProvider>(
                                    builder: (context, value, child) {
                                      return CustomDropDown(
                                          onTapTile: () {
                                            value.changeDropSelectedIndex();
                                          },
                                          list: value.downLocationsList,
                                          onTap: () {
                                            value.toogleDropDropDown();
                                          },
                                          heading_Text: MyText.locations,
                                          isOpen: value.isDropDropdownOpen,
                                          dropdown_main_Text:
                                              value.dropheading_Text);
                                    },
                                  ),

                                  // LocationDropDownPickUp(),

                                  HeightC(20),
                                  TextHeading_600_14_Black(text: MyText.date),
                                  HeightC(8),
                                  DropCalander(),
                                  HeightC(20),
                                  TextHeading_600_14_Black(text: MyText.time),
                                  HeightC(8),
                                  DropTime(),
                                  HeightC(40),
                                ],
                              ),
                            ),
                          ),
                        ),
                        HeightC(22),
                      ]),
                    ),
                  ),
                ],
              )),
        ),
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 26),
            child: Consumer<UserTravellingPaymentDetailProvider>(
                builder: (context, detail, child) {
              if (detail.pickHeading_Text == MyText.select_your_city ||
                  detail.dropheading_Text == MyText.select_your_city ||
                  detail.pickedDate == MyText.select_your_date ||
                  detail.dropDate == MyText.select_your_date ||
                  detail.pickedTime == MyText.select_your_time ||
                  detail.dropTime == MyText.select_your_time) {
                return PrimaryButton(
                  text: MyText.nextButton,
                  color: MyColors.light_grey_90A3BF_Color,
                  onTap: () {
                    showToastMessage('please fill details first');
                  },
                );
              } else {
                return PrimaryButton(
                  text: MyText.nextButton,
                  onTap: () {
                    GoRouter.of(context).pushNamed(MyRoutes.confirmationDetail);
                    //   if (formKey.currentState!.validate()) {}
                  },
                );
              }
            })));
  }
}
