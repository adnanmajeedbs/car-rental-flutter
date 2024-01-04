import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Theme/colors_theme_data.dart';

class SecondaryTextFeild extends StatelessWidget {
  final controller;
  final String hintText;
  // final String labelText;
  const SecondaryTextFeild({
    super.key,
    required this.controller,
    required this.hintText,
    // required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, auth, child) {
      return TextFormField(
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 32, left: 16),
              child: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    ImagePath.searchImage,
                  ),
                  // scale: 1.8,
                )),
              ),
            ),
            border: OutlineInputBorder(
                // borderSide:
                //     BorderSide(),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyColors.border_container),
                borderRadius: BorderRadius.circular(10)),
            filled: false,
            hintText: hintText,
            // labelText: labelText,
            labelStyle: TextStyle(color: Color(0xff999999)),
            hintStyle: TextStyle(color: Color(0xff999999)),
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
            floatingLabelBehavior: FloatingLabelBehavior.never),
      );
    });
  }
}
