import 'package:chartercar/App/Common/TextFeild/provider/abscureText.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PasswordSignInCustomTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool abscureText;
  final String labelText;

  const PasswordSignInCustomTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.abscureText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer2<AbscureTextProvider, AuthProvider>(
      builder: (context, value, auth, child) {
        return TextFormField(
          controller: controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "password is required";
            }
            return null;
          },
          obscureText: value.loginAbscure,
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  vibrate();
                  value.toggleLoginAbscure();
                },
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 200),
                  child: Icon(
                    value.loginAbscure
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: value.loginAbscure
                        ? Color(0xFF64748B)
                        : MyColors.blue_clr,
                  ),
                ),
              ),
              // enabledBorder

              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.circular(10)),
              filled: false,
              hintText: hintText,
              labelText: labelText,
              labelStyle: TextStyle(color: Color(0xff999999)),
              hintStyle: TextStyle(color: Color(0xff999999)),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
              floatingLabelBehavior: FloatingLabelBehavior.never),
        );
      },
    );
  }
}
