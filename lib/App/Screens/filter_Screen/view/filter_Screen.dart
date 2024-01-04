import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryButton.dart';
import 'package:chartercar/App/Common/appBar/custom_App_Bar.dart';
import 'package:chartercar/App/Screens/filter_Screen/components/conditions.dart';
import 'package:chartercar/App/Screens/filter_Screen/components/filterPageCustomDropDown.dart';
import 'package:chartercar/App/Screens/filter_Screen/components/fuel.dart';
import 'package:chartercar/App/Screens/filter_Screen/components/range_Slider.dart';
import 'package:chartercar/App/Screens/filter_Screen/model/dropDownsModles.dart';
import 'package:chartercar/App/Screens/filter_Screen/provider/filterDropDown_Provider.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../utils/Text/text.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});
//500 14 blue  clear_All
//500 12 grey min_Max_Range
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Consumer<FilterDropDownProvider>(
              builder: (context, value, child) {
            return Column(
              children: [
                // appbar
                CustomAppBar(
                  title: MyText.filter,
                  endText: MyText.clear_All,
                  color: MyColors.white_clr,
                  ontapEndText: () {
                    value.clearAll();
                  },
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // make dropdown
                        FilterPageCustomDropDown(
                          onTapTile: () {
                            value.changeMakeSelectedText();
                          },
                          onTap: () {
                            value.toogleIsMakeOpen();
                          },
                          isOpen: value.isMakeOpen,
                          list: makeList,
                          heading_Text: MyText.make,
                          dropdown_main_Text: value.makeSelectedText,
                        ),
                        // model dropdown
                        FilterPageCustomDropDown(
                          onTapTile: () {
                            value.changeModelSelectedText();
                          },
                          onTap: () {
                            value.toogleIsModelOpen();
                          },
                          isOpen: value.isModelOpen,
                          list: modelsList,
                          heading_Text: MyText.model,
                          dropdown_main_Text: value.modelSelectedText,
                        ),
                        // range slider widget
                        RangeSliderFilterPage(),
                        // car doc. dropdown
                        FilterPageCustomDropDown(
                          onTapTile: () {
                            value.changeCarDocumentsSelectedText();
                          },
                          onTap: () {
                            value.toogleIsCarDocumentsOpen();
                          },
                          isOpen: value.isCarDocumentsOpen,
                          list: carDocumentsList,
                          heading_Text: MyText.car_Document,
                          dropdown_main_Text: value.carDocumentsSelectedText,
                        ),
                        // transmition dropdown
                        FilterPageCustomDropDown(
                          onTapTile: () {
                            value.changeTransmissionSelectedText();
                          },
                          onTap: () {
                            value.toogleIsTransmissionOpen();
                          },
                          isOpen: value.isTransmissionOpen,
                          list: transmittionList,
                          heading_Text: MyText.transmission,
                          dropdown_main_Text: value.transmissionSelectedText,
                        ),
                        // conditions  heading & buttons
                        Condition(),
                        // fuel heading and tiles
                        Fuel(),
                        HeightC(45),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: PrimaryButton(
          text: MyText.apply,
          onTap: () {},
        ),
      ),
    );
  }
}
