import 'package:chartercar/App/Common/richText/MyrichText.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/vibration/vibrattion.dart';

class MyRichTextSignIn extends StatelessWidget {
  const MyRichTextSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
            style: MyTextStyle.richText_dontHaveAnAccount_textstyle,
            children: <TextSpan>[
              TextSpan(text: MyText.dont_have_an_account),
              buildClickableTextSpan(
                onTap: () {
                  vibrate();

                  context.pushNamed(MyRoutes.SignupViewScreen);
                },
                style1: MyTextStyle.richText_Signup_signin_text_textstyle,
                text: MyText.sign_Up,
              ),
            ]),
      ),
    );
  }
}
