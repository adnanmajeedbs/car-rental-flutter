import 'package:chartercar/App/Common/MyButtons/SecondaryButton.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/vibration/vibrattion.dart';

class SignInAppleButton extends StatelessWidget {
  const SignInAppleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondaryButton(
        imageHeight: 15.5,
        imageWidth: 14,
        text: MyText.sign_in_with_Apple,
        onTap: () {
          vibrate();
        },
        image: "assets/images/icons/Apple.svg",
        textStyle: MyTextStyle.Secondary_Apple_Button_TextStyle,
        Backgroundcolor: MyColors.secondary_Apple_Button_Color);
  }
}
