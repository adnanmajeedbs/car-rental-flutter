import 'package:chartercar/App/Common/MyButtons/SecondaryButton.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/vibration/vibrattion.dart';

class SignInGoogleButton extends StatelessWidget {
  const SignInGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondaryButton(
        imageHeight: 16.79,
        imageWidth: 17.13,
        text: MyText.sign_in_with_Google,
        onTap: () {
          vibrate();
        },
        image: "assets/images/icons/google-icon.svg",
        textStyle: MyTextStyle.Secondary_Google_Button_TextStyle,
        Backgroundcolor: MyColors.white_clr);
  }
}
