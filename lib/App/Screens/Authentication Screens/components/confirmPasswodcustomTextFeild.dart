import 'package:chartercar/App/Common/TextFeild/provider/abscureText.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Theme/colors_theme_data.dart';
import '../../../../utils/vibration/vibrattion.dart';

class ConfirmPasswortCustomTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool abscureText;
  final String labelText;

  const ConfirmPasswortCustomTextfield({
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
        obscureText: value.confirmAbscure,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "reset password is required";
          } else if (value != auth.ConfirmPasswordController.text) {
            return "reset password not match";
          }
          return null;
        },
        decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: () {
                vibrate();
                value.toggleConfirmAbscure();
              },
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                child: Icon(
                  value.confirmAbscure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: value.confirmAbscure
                      ? Color(0xFF64748B)
                      : MyColors.blue_clr,
                ),
              ),
            ),
            // enabledBorder: ,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff999999)),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                borderRadius: BorderRadius.circular(10)),
            filled: false,
            // hintText: hintText,
            labelText: labelText,
            labelStyle: TextStyle(color: Color(0xff999999)),
            hintStyle: TextStyle(color: Color(0xff999999)),
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
            // alignLabelWithHint: false,
            floatingLabelBehavior: FloatingLabelBehavior.never),
      );
    });
  }
}
