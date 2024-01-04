import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneNoAccountInformationTextFeild extends StatelessWidget {
  final controller;
  final String hintText;
  final String labelText;
  final Color textFeildColor;
  const PhoneNoAccountInformationTextFeild({
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
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Phone Number is Required";
        } else if (value.length < 10 || value.length > 10) {
          return "Enter Valid Phone Number";
        }
        return null;
      },
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
