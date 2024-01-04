import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double imageHeight;
  final double imageWidth;
  // final double width;
  final double height;
  final TextStyle textStyle;
  final Color Backgroundcolor;
  final String image;
  const SecondaryButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.imageHeight,
    required this.imageWidth,
    // this.width = 350,
    this.height = 55,
    required this.textStyle,
    required this.Backgroundcolor,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        height: height,
        // width: width,
        decoration: BoxDecoration(
          color: Backgroundcolor,
          borderRadius: BorderRadius.circular(5),
        ),
//row
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//image
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Container(
              height: imageHeight,
              width: imageWidth,
              child: SvgPicture.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
//text
          Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Container(
              height: 24,
              width: 24,
            ),
          ),
        ]),
      ),
    );
  }
}
