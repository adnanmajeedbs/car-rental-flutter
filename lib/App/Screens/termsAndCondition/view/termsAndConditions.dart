import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Screens/termsAndCondition/view/textOfTermsAndCondiyion.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:flutter/material.dart';

import '../../../Common/textHeading/600/textHeading600_20_Black_.dart';

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                HeightC(12),
                // AppBarLogo
                Center(
                  child: Container(
                    height: 39,
                    width: 164,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(ImagePath.AppBarLogo),
                      fit: BoxFit.fill,
                    )),
                  ),
                ),
                HeightC(27),
                //SignUPText
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextHeading_600_20_Black(text: MyText.termsConditions),
                ),
                HeightC(15),
                TextOfTermsAndCondition(),
                HeightC(15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
