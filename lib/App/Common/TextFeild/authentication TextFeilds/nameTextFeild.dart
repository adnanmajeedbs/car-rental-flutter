import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NameCustomTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final String labelText;
  const NameCustomTextField({
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
            return "name is required";
          } else if (value.length < 3) {
            return "enter valid name";
          } else if (value.length > 20) {
            return "name should not exceed 20 letters";
          }
          return null;
        },
        decoration: InputDecoration(

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
