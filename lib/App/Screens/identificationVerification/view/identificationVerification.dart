import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryButton.dart';
import 'package:chartercar/App/Common/toast_Message/toast_Message.dart';
import 'package:chartercar/App/Screens/identificationVerification/components/licenceTextFeild.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Theme/text_Theme_Data.dart';
import '../../../Common/heading_And_Text.dart/Custom_Heading_And_Text.dart';
import '../components/LicenceViewContainer.dart';
import '../provider/licenceProvider.dart';

class IdentificationVerificationView extends StatelessWidget {
  IdentificationVerificationView({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                    Consumer<LicenceProvider>(builder: (context, value, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Heading_And_Text(
                        heading: MyText.identification_Verification,
                        text: MyText
                            .please_complete_your_identification_Verification,
                        heightC: 30,
                      ),
                      //licenceNumber
                      Text(
                        MyText.licenceNumber,
                        style: MyTextStyle.Secondary_Google_Button_TextStyle,
                      ),
                      HeightC(7),
                      LicenceIdentificationVerificationTextFeild(
                          controller: value.licenceController,
                          hintText: "B1-234-212",
                          labelText: "B1-234-212",
                          textFeildColor: MyColors.white_clr),
                      HeightC(24),
                      //Front Pic
                      Text(
                        MyText.car_Licence_front_Image,
                        style: MyTextStyle.Secondary_Google_Button_TextStyle,
                      ),
                      HeightC(8),
                      LicenceContainer(
                        index: 0,
                        image: value.imagePathFront,
                      ),
                      HeightC(24),
                      //Back  Pic
                      Text(
                        MyText.car_Licence_Back_Image,
                        style: MyTextStyle.Secondary_Google_Button_TextStyle,
                      ),
                      HeightC(8),
                      LicenceContainer(
                        index: 1,
                        image: value.imagePathBack,
                      ),
                      //update button

                      HeightC(15)
                    ],
                  );
                }),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: Consumer<LicenceProvider>(builder: (context, value, child) {
          return PrimaryButton(
            text: MyText.save,
            onTap: () {
              if (formKey.currentState!.validate()) {
                if (value.imagePathBack.isEmpty ||
                    value.imagePathFront.isEmpty) {
                  showToastMessage(
                      'Kindly! provide licence front & back image');
                } else {
                  GoRouter.of(context).pop();
                  value.licenceController.clear();
                }
              }
              ;
            },
          );
        }),
      ),
    );
  }
}
