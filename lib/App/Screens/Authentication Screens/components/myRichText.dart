import 'package:chartercar/App/Common/richText/MyrichText.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/vibration/vibrattion.dart';

class MyRichTextSignUp extends StatelessWidget {
  const MyRichTextSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        // alignment: Alignment.centerRight,
        child: RichText(
      text: TextSpan(
          style: MyTextStyle.richText_dontHaveAnAccount_textstyle,
          children: <TextSpan>[
            TextSpan(text: MyText.already_Have_An_Account),
            buildClickableTextSpan(
              onTap: () {
                vibrate();
                context.goNamed(MyRoutes.LoginViewScreen);
              },
              style1: MyTextStyle.richText_Signup_signin_text_textstyle,
              text: MyText.sign_In,
            ),
            // TextSpan(text: ', '),
            // buildClickableTextSpan('Privacy Policy ', onTap: () {

            // }),
          ]),
    ));
  }
}
