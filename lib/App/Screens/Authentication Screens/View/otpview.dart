import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryButton.dart';
import 'package:chartercar/App/Common/richText/MyrichText.dart';
import 'package:chartercar/App/Common/toast_Message/toast_Message.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/oTP_Field.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/oTP_Timer.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/resed_Button.dart';

import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../utils/vibration/vibrattion.dart';
import '../../../Common/appBar/cumstom_App_Bar_Logo.dart';
import '../../../Common/textHeading/600/textHeading600_20_Black_.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Custom_App_Bar_Logo(),

//Verify AccountText
              TextHeading_600_20_Black(text: MyText.verify_Account_otp),

              HeightC(8),
//Enter
              Align(child:
                  Consumer<AuthProvider>(builder: (context, value, child) {
                return RichText(
                  text: TextSpan(
                      style: MyTextStyle.heading_500_12__Grey_textstyle,
                      children: <TextSpan>[
                        TextSpan(text: MyText.verify_your_account_Line_otp),
                        buildClickableTextSpan(
                          onTap: () {
                            vibrate();
                          },
                          style1: MyTextStyle.heading_500_12__Blue_textstyle,
                          // text: AppText.,
                          text: "${value.tempEmail}",
                        ),
                      ]),
                );
              })),
              HeightC(28),

              OTPFieldd(),
              HeightC(28),
              OTPTimer(),
              HeightC(28),
              Consumer<AuthProvider>(builder: (context, value, child) {
                if (value.isAllOTPFilled == false) {
                  return PrimaryButton(
                    text: MyText.confirm_otp,
                    color: MyColors.light_grey_90A3BF_Color,
                    onTap: () {
                      showToastMessage('Please fill all OTP fields');
                    },
                  );
                } else
                  return PrimaryButton(
                    text: MyText.confirm_otp,
                    onTap: () async {
                      print('hitted');
                      if (await value.otpVarificationApi()) {
                        value.isOtpHome == true
                            ? GoRouter.of(context).goNamed(MyRoutes.MainScreen)
                            : GoRouter.of(context)
                                .pushNamed(MyRoutes.reset_Password);

                        value.clearOtp();
                      }
                    },
                  );
              }),
              HeightC(28),
              ResendButton(),
            ],
          ),
        ),
      )),
    );
  }
}
