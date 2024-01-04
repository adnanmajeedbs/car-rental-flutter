import 'package:chartercar/App/Common/textHeading/500/textHeading_500_14_Grey%20.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OTPTimer extends StatelessWidget {
  const OTPTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextHeading_500_14_Grey(text: MyText.code_will_resend_in),
        Consumer<AuthProvider>(
          builder: (context, value, child) {
            return Text(
              value.seconds > 9
                  ? value.seconds.toString() + 's'
                  : value.seconds.toString() + 's',
              style: MyTextStyle.otp_time,
            );
          },
        )
      ],
    );
  }
}
