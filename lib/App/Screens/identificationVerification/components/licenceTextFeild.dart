import 'package:flutter/material.dart';

class LicenceIdentificationVerificationTextFeild extends StatelessWidget {
  final controller;
  final String hintText;
  final String labelText;
  final Color textFeildColor;
  const LicenceIdentificationVerificationTextFeild({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    required this.textFeildColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Licence is Required";
        }
        // else if (value.length < 10 || value.length > 10) {
        //   return "Enter Valid Phone Number";
        // }
        return null;
      },
      decoration: InputDecoration(

          // enabledBorder
          fillColor: textFeildColor,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          filled: true,
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(color: Color(0xff999999)),
          hintStyle: TextStyle(color: Color(0xff999999)),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
          floatingLabelBehavior: FloatingLabelBehavior.never),
    );
  }
}
