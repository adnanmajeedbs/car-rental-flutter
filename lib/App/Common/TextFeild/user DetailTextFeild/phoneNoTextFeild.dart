import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PhoneUserDetailTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final String labelText;
  const PhoneUserDetailTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "PhoneNo is Required";
        } else if (value.length < 10 || value.length > 11) {
          return "Enter Valid PhoneNo";
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
              borderSide: BorderSide.none,
              // borderSide: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: MyColors.userDetail,
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(color: Color(0xff999999)),
          hintStyle: TextStyle(color: Color(0xff999999)),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
          floatingLabelBehavior: FloatingLabelBehavior.never),
    );
  }
}
