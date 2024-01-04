import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';

class CityTownUserDetailTextFeild extends StatelessWidget {
  final controller;
  final String hintText;
  final String labelText;
  const CityTownUserDetailTextFeild({
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
          return "city/town is Required";
        }
        return null;
      },
      decoration: InputDecoration(

          // enabledBorder
          fillColor: MyColors.userDetail,
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
