import 'package:chartercar/App/Screens/review_screen/provider/rating_Provider.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RatingTextField extends StatelessWidget {
  const RatingTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<RatingProvider>(builder: (context, value, child) {
      return TextField(
        controller: value.ratingText,
        obscureText: false,
        maxLines: 4,
        onChanged: (text) {
          value.updateTextLength();
          if (text.length < 5) {
            value.ratingText.text.length - 1;
          }
        },
        decoration: InputDecoration(
          // enabledBorder
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
          filled: false,
          hintText: 'Write your message here ...',
          hintStyle: MyTextStyle.heading_400_14_textField_text,
          contentPadding: EdgeInsets.all(0),
        ),
      );
    });
  }
}
