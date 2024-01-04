import 'dart:io';

import 'package:chartercar/App/Screens/identificationVerification/components/LicencCameraGellaryPopUp.dart';
import 'package:chartercar/App/Screens/identificationVerification/provider/licenceProvider.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'licenecRichText.dart';

class LicenceContainer extends StatelessWidget {
  final int index;
  final String image;
  const LicenceContainer({super.key, required this.index, required this.image});

  @override
  Widget build(BuildContext context) {
    return Consumer<LicenceProvider>(builder: (context, value, child) {
      return GestureDetector(
        onTap: () {
          vibrate();
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return LicenceCameraGalleryPopUP(
                  index: index,
                );
              });
        },
        child: Container(
          height: 165,
          decoration: BoxDecoration(
            color: MyColors.white_clr,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(40),
                child: Center(
                  child: LicenceRichText(
                    // image: image,
                    index: index,
                  ),
                ),
              ),
              Container(
                height: 165,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: FileImage(
                          File(image),
                        ),
                        fit: BoxFit.fill)),
              ),
            ],
          ),
        ),
      );
    });
  }
}
