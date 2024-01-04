import 'package:flutter/material.dart';

class PostCodeAccountInformationTextFeild extends StatelessWidget {
  final controller;
  final String hintText;
  final String labelText;
  final Color textFeildColor;
  const PostCodeAccountInformationTextFeild({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    required this.textFeildColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Post Code is Required";
        } else if (value.length < 5 || value.length > 5) {
          return "Enter Valid Post Code";
        }
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
