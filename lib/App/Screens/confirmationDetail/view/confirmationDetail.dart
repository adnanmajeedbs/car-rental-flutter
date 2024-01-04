import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/appBar/custom_App_Bar.dart';
import 'package:chartercar/App/Common/toast_Message/toast_Message.dart';
import 'package:chartercar/App/Screens/confirmationDetail/components/confirmation2ndContainer.dart';
import 'package:chartercar/App/Screens/confirmationDetail/provider/confirmationDetailProvider.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/theme/colors_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Common/MyButtons/PrimaryButton.dart';
import '../components/PopUpCongratulation.dart';
import '../components/confermationDetail1stContainer.dart';

class ConfirmationDetail extends StatelessWidget {
  const ConfirmationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            CustomAppBar(title: MyText.confirmation_Details),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      HeightC(22),
                      Confirmation1stContainer(),
                      HeightC(20),
                      Confirmation2ndContainer(),
                      HeightC(50),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 26),
        child: Consumer<ConfirmationDetailProvider>(
            builder: (context, value, child) {
          if (value.agreeWithCondition == false ||
              value.agreeWithNoSpam == false) {
            return PrimaryButton(
              text: MyText.rental_Now,
              color: MyColors.light_grey_90A3BF_Color,
              onTap: () {
                showToastMessage('Agree all conditions first');
              },
            );
          } else {
            return PrimaryButton(
              text: MyText.rental_Now,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    // return PopUpError();
                    return PopUpCongratulation();
                  },
                );
              },
            );
          }
        }),
      ),
    );
  }
}
