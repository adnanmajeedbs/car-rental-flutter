import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

TextSpan buildClickableTextSpan(
    {required text, required style1, required VoidCallback onTap}) {
  return TextSpan(
    text: text,
    style: style1,
    recognizer: TapGestureRecognizer()
      ..onTap = () {
        vibrate();
        onTap();
      },
  );
}
