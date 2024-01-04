import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/vibration/vibrattion.dart';

class ResendButton extends StatelessWidget {
  const ResendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Consumer<AuthProvider>(
          builder: (context, value, child) {
            return GestureDetector(
              onTap: () {
                vibrate();
                value.seconds == 0 ? value.startTimer() : null;
              },
              child: Text('Resend',
                  style: value.seconds == 0
                      ? MyTextStyle.resend_text_textStyle
                      : MyTextStyle.resend_text_inactiv2),
            );
          },
        )
      ],
    );
  }
}
