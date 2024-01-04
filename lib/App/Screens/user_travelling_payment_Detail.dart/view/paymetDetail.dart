import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/provider/user_travelling_payment_Provider.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Routes/routes_constant.dart';
import '../../../../utils/Text/text.dart';
import '../../../../utils/Theme/colors_theme_data.dart';
import '../../../../utils/svgImages/svgImages.dart';
import '../../../Common/DynamicSpace/SizeBoxC.dart';
import '../../../Common/MyButtons/PrimaryButton.dart';
import '../../../Common/appBar/custom_App_Bar.dart';
import '../../../Common/detailBarSteps.dart/detailBarSteps.dart';
import '../../../Common/textHeading/600/textHeading600_14_Black.dart';
import '../../../Common/textHeading/600/textHeading600_16_Black.dart';
import '../components/payment_TextField.dart';

class PaymentMethod extends StatelessWidget {
  PaymentMethod({super.key});
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
            child: Column(
              children: [
                //appBar
                CustomAppBar(
                  title: MyText.payment_Details,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            // height: 516,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: MyColors.white_clr),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16, right: 16, top: 16, bottom: 21),
                              child:
                                  Consumer<UserTravellingPaymentDetailProvider>(
                                      builder: (context, value, child) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // heading of payment Method etc
                                    DetailBarSteps(
                                        titel: MyText.payment_Method,
                                        text: MyText
                                            .please_Enter_Your_Payment_Method,
                                        step: MyText.Step_3_of_4),

                                    //credit text
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 16, left: 16, right: 16),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: MyColors.appClr),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                        SvgImages.pickUpMark),
                                                    WidthC(8),
                                                    TextHeading_600_16_Black(
                                                        text:
                                                            MyText.credit_Card),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 20,
                                                width: 92,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImagePath
                                                                .paymentMethod),
                                                        fit: BoxFit.cover)),
                                              )
                                            ],
                                          ),
                                          HeightC(20),
                                          //account textFeild
                                          TextHeading_600_14_Black(
                                              text: MyText.card_Number),
                                          HeightC(12),

                                          PaymentTextField(
                                              controller:
                                                  value.cardNumberController,
                                              hintText: MyText.card_number,
                                              keyboardInType:
                                                  TextInputType.number),
                                          HeightC(20),
                                          //name textFeild
                                          TextHeading_600_14_Black(
                                              text: MyText.card_Holder),
                                          HeightC(12),

                                          PaymentTextField(
                                              controller:
                                                  value.holderNameController,
                                              hintText: MyText.card_holder,
                                              keyboardInType:
                                                  TextInputType.name),
                                          HeightC(20),
                                          // expiry date textFeild
                                          TextHeading_600_14_Black(
                                              text: MyText.expration_Date),
                                          HeightC(12),

                                          PaymentTextField(
                                              controller: value.dateController,
                                              hintText: MyText.date_Month_Year,
                                              keyboardInType:
                                                  TextInputType.datetime),
                                          HeightC(20),
                                          // cvc date textFeild
                                          TextHeading_600_14_Black(
                                              text: MyText.cvc),
                                          HeightC(12),

                                          PaymentTextField(
                                              controller: value.cVVController,
                                              hintText: MyText.cvc,
                                              keyboardInType:
                                                  TextInputType.number),
                                          HeightC(40),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }),
                            ),
                          ),
                        ),
                        HeightC(22),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 26),
        child: PrimaryButton(
          text: MyText.save,
          onTap: () {
            if (formKey.currentState!.validate()) {
              GoRouter.of(context).pushNamed(MyRoutes.confirmationDetail);
            }
          },
        ),
      ),
    );
  }
}
