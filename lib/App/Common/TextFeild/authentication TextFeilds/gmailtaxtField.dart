import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GmailCustomTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final String labelText;

  const GmailCustomTextField({
    required this.controller,
    required this.hintText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, auth, child) {
      return TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "email is required";
          } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
              .hasMatch(value)) {
            return 'please enter valid email';
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
