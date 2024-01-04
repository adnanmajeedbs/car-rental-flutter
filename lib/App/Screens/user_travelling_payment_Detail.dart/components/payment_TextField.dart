import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';

class PaymentTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardInType;
  final String hintText;
  final int? maxLength;
  final double? width;
  const PaymentTextField({
    super.key,
    required this.controller,
    required this.keyboardInType,
    required this.hintText,
    this.maxLength,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        controller: controller,
        obscureText: false,
        keyboardType: keyboardInType,
        maxLength: maxLength,
        decoration: InputDecoration(
          // enabledBorder
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          fillColor: MyColors.white_clr,
          filled: true,
          hintText: hintText,
          // labelText: 'Your Review...',
          labelStyle: TextStyle(color: MyColors.light_grey_90A3BF_Color),
          hintStyle: TextStyle(color: MyColors.light_grey_90A3BF_Color),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
      ),
    );
  }
}
