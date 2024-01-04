import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';

class PrimaryTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;
  final TextStyle textStyle;

  PrimaryTextButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width = 50,
    this.height = 53,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        vibrate();
        onTap();
      },
      child: Container(
        width: width,
        height: height,
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
