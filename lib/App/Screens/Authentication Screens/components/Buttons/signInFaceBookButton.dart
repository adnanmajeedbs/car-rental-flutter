import 'package:chartercar/App/Common/MyButtons/SecondaryButton.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/vibration/vibrattion.dart';

class SignInFaceBookButton extends StatelessWidget {
  const SignInFaceBookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondaryButton(
        imageHeight: 24,
        imageWidth: 24,
        text: MyText.sign_in_with_Facebook,
        onTap: () {
          vibrate();
        },
        image: "assets/images/icons/facebook-icon.svg",
        textStyle: MyTextStyle.Secondary_FaceBook_Button_TextStyle,
        Backgroundcolor: MyColors.secondary_Facebook_Button_Color);
  }
}
