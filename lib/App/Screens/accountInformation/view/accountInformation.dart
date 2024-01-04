import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/TextFeild/user%20DetailTextFeild/addressTextFeild.dart';
import 'package:chartercar/App/Common/TextFeild/user%20DetailTextFeild/nameTextFeild.dart';
import 'package:chartercar/App/Screens/accountInformation/components/editImage/edit_Profile.dart';
import 'package:chartercar/App/Screens/accountInformation/components/selectGender/selectGender.dart';
import 'package:chartercar/App/Screens/accountInformation/components/textFeilds/emailaccountInformation.dart';
import 'package:chartercar/App/Screens/accountInformation/components/textFeilds/phoneAccountInfo.dart';
import 'package:chartercar/App/Screens/accountInformation/components/textFeilds/postCodeAccountInformation.dart';
import 'package:chartercar/App/Screens/accountInformation/provider/accountInformationProvider.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../Common/MyButtons/PrimaryButton.dart';
import '../../../Common/heading_And_Text.dart/Custom_Heading_And_Text.dart';

class AccountInformationView extends StatelessWidget {
  AccountInformationView({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<AccountDetailProvider>(builder: (context, value, child) {
      return Scaffold(
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Heading_And_Text(
                        heading: MyText.accountInformation,
                        text: MyText.please_complete_your_profile,
                        heightC: 27,
                      ),

                      //image
                      Center(child: EditProfileImage()),
                      HeightC(18),
                      //Full Name
                      Text(
                        MyText.fullName,
                        style: MyTextStyle.Secondary_Google_Button_TextStyle,
                      ),
                      HeightC(7),
                      nameUserDetailTextFeild(
                          textFeildColor: MyColors.white_clr,
                          controller: value.nameController,
                          hintText: "",
                          labelText: value.name),
                      HeightC(24),
                      //Email
                      Text(
                        MyText.email,
                        style: MyTextStyle.Secondary_Google_Button_TextStyle,
                      ),
                      HeightC(7),
                      emailAccountInformationTextFeild(
                        controller: value.emailController,
                        hintText: "",
                        labelText: value.email,
                        textFeildColor: MyColors.white_clr,
                      ),
                      HeightC(24),
                      //gender select
                      Text(
                        MyText.gender,
                        style: MyTextStyle.Secondary_Google_Button_TextStyle,
                      ),
                      HeightC(7),
                      SelectGender(),
                      HeightC(24),
                      //phoneNo
                      Text(
                        MyText.phoneNo,
                        style: MyTextStyle.Secondary_Google_Button_TextStyle,
                      ),
                      HeightC(7),
                      PhoneNoAccountInformationTextFeild(
                        controller: value.phoneController,
                        hintText: "",
                        labelText: value.phoneNo,
                        textFeildColor: MyColors.white_clr,
                      ),
                      HeightC(24),
                      //postCode
                      Text(
                        MyText.postCode,
                        style: MyTextStyle.Secondary_Google_Button_TextStyle,
                      ),
                      HeightC(7),
                      PostCodeAccountInformationTextFeild(
                        controller: value.postCodeController,
                        hintText: "",
                        labelText: value.postCode,
                        textFeildColor: MyColors.white_clr,
                      ),
                      HeightC(24),
                      //address
                      Text(
                        MyText.address_heading_textFeild,
                        style: MyTextStyle.Secondary_Google_Button_TextStyle,
                      ),
                      HeightC(7),

                      addressUserDetailTextFeild(
                        controller: value.addressController,
                        hintText: '',
                        labelText: value.address,
                        textFeildColor: MyColors.white_clr,
                      ),
                      HeightC(24),
                      //update button
                    ],
                  )),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
          child: PrimaryButton(
            text: MyText.update,
            onTap: () {
              value.onSave();
              GoRouter.of(context).pop();
            },
          ),
        ),
      );
    });
  }
}
