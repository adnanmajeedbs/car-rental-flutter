import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/Theme/colors_theme_data.dart';
import '../textHeading/600/textHeading600_16_Black.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String endText;
  final VoidCallback? ontapEndText;
  final Color color;
  final bool isTextAdd;
  final int rewiewNo;
  final EdgeInsetsGeometry padding;
  const CustomAppBar({
    super.key,
    required this.title,
    this.endText = '',
    this.ontapEndText,
    this.isTextAdd = false,
    this.rewiewNo = 0,
    this.color = MyColors.white_clr,
    this.padding = const EdgeInsets.all(0.0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: color,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 22, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  vibrate();
                  GoRouter.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20,
                ),
              ),

              // AppBarLogo
              Center(
                child: Row(
                  children: [
                    TextHeading_600_16_Black(
                      text: title,
                    ),
                    isTextAdd
                        ? Text(
                            "(${rewiewNo})",
                            style: MyTextStyle.heading_600_16_textstyle,
                          )
                        : Text("")
                  ],
                ),
              ),
              // end text
              GestureDetector(
                onTap: () {
                  vibrate();
                  ontapEndText!();
                },
                child: Text(
                  endText,
                  // style: MyTextStyle.clear_All,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
