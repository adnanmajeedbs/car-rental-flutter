import 'package:chartercar/App/Common/textHeading/500/textHeading_500_12%20_grey.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/provider/user_travelling_payment_Provider.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../utils/Theme/colors_theme_data.dart';
import '../DynamicSpace/SizeBoxC.dart';
import '../textHeading/600/textHeading600_14_Black.dart';

class CustomDropDown extends StatelessWidget {
  final bool isOpen;
  final VoidCallback onTap;
  final String heading_Text;
  final String dropdown_main_Text;
  final List list;
  final VoidCallback onTapTile;
  const CustomDropDown(
      {super.key,
      required this.onTapTile,
      required this.list,
      required this.onTap,
      required this.heading_Text,
      required this.isOpen,
      required this.dropdown_main_Text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeightC(20),
        //location text
        TextHeading_600_14_Black(text: heading_Text),
        HeightC(12),
        GestureDetector(
          onTap: () {
            vibrate();
            onTap();
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: MyColors.appClr,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //text select your city
                  TextHeading_500_12_Grey(text: dropdown_main_Text),

                  Icon(
                    isOpen
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    color: MyColors.light_grey_90A3BF_Color,
                  ),
                ],
              ),
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: isOpen ? 10 : 0,
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: isOpen ? 150 : 0,
          decoration: BoxDecoration(
            color: MyColors.appClr,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Consumer<UserTravellingPaymentDetailProvider>(
                  builder: (context, value, child) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (index == 0) HeightC(10),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                            onTap: () {
                              vibrate();
                              value.changeIndex(index);
                              onTapTile();
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              child: Text(list[index]),
                              alignment: Alignment.centerLeft,
                            )),
                      ),
                      if (index != list.length - 1)
                        Divider(
                          thickness: 1,
                        ),
                    ],
                  ),
                );
              });
            },
          ),
        )
      ],
    );
  }
}
