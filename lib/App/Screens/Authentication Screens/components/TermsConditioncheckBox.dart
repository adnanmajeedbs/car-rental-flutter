import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/richText/MyrichText.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AgreeWithTermsCheckBox extends StatelessWidget {
  const AgreeWithTermsCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // check box
      Consumer<AuthProvider>(
        builder: (context, value, child) => Padding(
          padding: const EdgeInsets.only(left: 6),
          child: IconButton(
            // splashRadius: 50,
            onPressed: () {
              vibrate();
              value.agreeWithTermCondition();
            },
            icon: value.agreeWithCondition
                ? Icon(
                    Icons.check_box_rounded,
                  )
                : Icon(
                    Icons.check_box_outline_blank_rounded,
                  ),

            color: value.agreeWithCondition
                ? MyColors.blue_clr
                : MyColors.light_grey_90A3BF_Color,
            iconSize: 22,
          ),
        ),
      ),
      WidthC(11),
      RichText(
        text: TextSpan(
            style: MyTextStyle.checkbox_terms_and_condition_textstyle,
            children: <TextSpan>[
              TextSpan(text: MyText.iAgreeTermsAndConditions),
              buildClickableTextSpan(
                onTap: () {
                  vibrate();
                  GoRouter.of(context).pushNamed(MyRoutes.termsAndCondition);
                },
                style1: MyTextStyle.terms_and_condition_textstyle,
                text: MyText.termsConditions,
              ),
            ]),
      )
    ]);
  }
}
