import 'package:chartercar/App/Screens/filter_Screen/provider/filterDropDown_Provider.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../utils/Theme/colors_theme_data.dart';
import '../../../../utils/Theme/text_Theme_Data.dart';
import '../../../Common/DynamicSpace/SizeBoxC.dart';

class FilterPageCustomDropDown extends StatelessWidget {
  final bool isOpen;
  final VoidCallback onTap;
  final String heading_Text;
  final String dropdown_main_Text;
  final List list;
  final VoidCallback onTapTile;
  FilterPageCustomDropDown(
      {super.key,
      required this.onTapTile,
      required this.list,
      required this.onTap,
      required this.heading_Text,
      required this.isOpen,
      required this.dropdown_main_Text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeightC(25),
          Text(
            heading_Text,
            style: MyTextStyle.Secondary_Google_Button_TextStyle,
          ),
          HeightC(3),
          GestureDetector(
            onTap: () {
              vibrate();
              onTap();
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: MyColors.white_clr,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dropdown_main_Text,
                      style: MyTextStyle.Rich_Text_otp_timer_TextStyle,
                    ),
                    Icon(isOpen
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded),
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
                color: MyColors.white_clr,
                borderRadius: BorderRadius.circular(10)),
            child: Scrollbar(
              interactive: true,
              thickness: 5,
              radius: Radius.circular(100),
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Consumer<FilterDropDownProvider>(
                      builder: (context, value, child) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                                onTap: () {
                                  vibrate();
                                  onTap();
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
            ),
          )
        ],
      ),
    );
  }
}
