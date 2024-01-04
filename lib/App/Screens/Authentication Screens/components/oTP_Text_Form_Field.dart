import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/theme/colors_theme_data.dart';

class OTPFormFieldd extends StatelessWidget {
  final TextEditingController controller;
  const OTPFormFieldd({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, value, child) {
        return Container(
          width: 48,
          height: 55,
          child: TextFormField(
              // style: Theme.of(context).textTheme.headlineLarge,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.2,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              onChanged: (fieldValue) {
                fieldValue.isNotEmpty
                    ? FocusScope.of(context).nextFocus()
                    : FocusScope.of(context).previousFocus();
                value.toogleisAllOTPFilled();
              },
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              cursorColor: MyColors.blue_clr,
              controller: controller,
              decoration: InputDecoration(
                filled: false,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: MyColors.blue_clr),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      width: 1,
                      color: controller.text.isEmpty
                          ? Color(0xFFE2E8F0)
                          : MyColors.blue_clr), //
                ),
              )),
        );
      },
    );
    //   },
    // );
  }
}
