import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class PhoneCustomTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final String labelText;
  const PhoneCustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, auth, child) {
      return TextFormField(
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "phone number is required";
          } else if (value.length < 10 || value.length > 11) {
            return "enter valid phone number";
          }
          return null;
        },
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 32, left: 16),
              child: Container(
                // height: 30,
                // width: 20,
                child: SvgPicture.asset(
                  "assets/images/icons/Pakistan.svg",
                  fit: BoxFit.contain,
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
    });
  }
}
