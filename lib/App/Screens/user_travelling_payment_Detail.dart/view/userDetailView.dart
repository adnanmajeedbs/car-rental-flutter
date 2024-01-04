import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryButton.dart';
import 'package:chartercar/App/Common/TextFeild/user%20DetailTextFeild/addressTextFeild.dart';
import 'package:chartercar/App/Common/TextFeild/user%20DetailTextFeild/cityTownTextFeild.dart';
import 'package:chartercar/App/Common/TextFeild/user%20DetailTextFeild/nameTextFeild.dart';
import 'package:chartercar/App/Common/TextFeild/user%20DetailTextFeild/phoneNoTextFeild.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/provider/user_travelling_payment_Provider.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Routes/routes_constant.dart';
import '../../../Common/appBar/custom_App_Bar.dart';
import '../../../Common/detailBarSteps.dart/detailBarSteps.dart';
import '../../../Common/textHeading/600/textHeading600_16_Black.dart';

class UserDetailView extends StatelessWidget {
  UserDetailView({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Consumer<UserTravellingPaymentDetailProvider>(
              builder: (context, value, child) {
                return Column(
                  children: [
                    // appBar
                    CustomAppBar(
                      title: MyText.userDetail,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            HeightC(22),
                            //

                            // container
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                // height: 516,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: MyColors.white_clr),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16, right: 16, top: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // name textfeild
                                      DetailBarSteps(
                                        titel: MyText.billing_Info,
                                        text: MyText.enter_billing_Info,
                                        step: MyText.Step_1_of_4,
                                      ),
                                      TextHeading_600_16_Black(
                                          text: MyText.name_heading_textFeild),

                                      HeightC(12),
                                      nameUserDetailTextFeild(
                                        textFeildColor: MyColors.userDetail,
                                        controller: value.nameController,
                                        hintText: "Your name",
                                        labelText: "Your name",
                                      ),
                                      HeightC(20),

                                      // address textfeild

                                      TextHeading_600_16_Black(
                                          text:
                                              MyText.address_heading_textFeild),
                                      HeightC(12),
                                      addressUserDetailTextFeild(
                                        controller: value.addressController,
                                        hintText: "Address",
                                        labelText: "Address",
                                        textFeildColor: MyColors.userDetail,
                                      ),
                                      HeightC(20),

                                      // phone textfeild

                                      TextHeading_600_16_Black(
                                          text:
                                              MyText.phoneno_heading_textFeild),
                                      HeightC(12),
                                      PhoneUserDetailTextField(
                                        controller: value.phoneNoController,
                                        hintText: "Phone number",
                                        labelText: "Phone number",
                                      ),

                                      HeightC(20),
                                      // town / city textfeild

                                      TextHeading_600_16_Black(
                                          text: MyText
                                              .city_town_heading_textFeild),
                                      HeightC(12),
                                      CityTownUserDetailTextFeild(
                                        controller: value.cityController,
                                        hintText: "Town or City",
                                        labelText: "Town or City",
                                      ),
                                      HeightC(40),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            HeightC(20),

                            //
                            //
                            //
                            //
                            //
                            //
                            //
                            //
                            //
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 26),
        child: PrimaryButton(
          text: MyText.nextButton,
          onTap: () {
            if (formKey.currentState!.validate()) {
              GoRouter.of(context).pushNamed(MyRoutes.travellingDetailView);
            }
          },
        ),
      ),
    );
  }
}
