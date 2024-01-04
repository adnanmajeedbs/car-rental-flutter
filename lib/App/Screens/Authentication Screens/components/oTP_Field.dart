import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'oTP_Text_Form_Field.dart';

class OTPFieldd extends StatelessWidget {
  const OTPFieldd({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, value, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OTPFormFieldd(
            controller: value.pin1,
          ),
          OTPFormFieldd(
            controller: value.pin2,
          ),
          OTPFormFieldd(
            controller: value.pin3,
          ),
          OTPFormFieldd(
            controller: value.pin4,
          ),
          OTPFormFieldd(
            controller: value.pin5,
          ),
          OTPFormFieldd(
            controller: value.pin6,
          ),
        ],
      );
    });
  }
}
