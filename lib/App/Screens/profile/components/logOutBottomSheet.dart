import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/textHeading/500/textHeading_500_14_Grey%20.dart';
import 'package:chartercar/App/Common/textHeading/600/textHeading600_16_Black.dart';
import 'package:chartercar/App/cache/get_shared_pref.dart';
import 'package:chartercar/App/cache/set_shared_pref.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Routes/routes_constant.dart';
import '../../../Common/MyButtons/PrimaryButton.dart';
import '../../main Screens/provider/provider.dart';

class LogOutbottomSheet extends StatelessWidget
    with SharedPrefSet, SharedPrefGet {
  const LogOutbottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      decoration: BoxDecoration(
          color: MyColors.white_clr, borderRadius: BorderRadius.circular(50)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 5,
                width: 48,
                decoration: BoxDecoration(
                    color: MyColors.light_grey_90A3BF_Color,
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            SizedBox(
              height: 44,
            ),
            Center(child: TextHeading_600_16_Black(text: MyText.logOut)),
            HeightC(17),
            Center(
              child: Container(
                width: 270,
                alignment: Alignment.center,
                child: TextHeading_500_14_Grey(
                  text: MyText.are_You_sure_you_want_to_logout,
                ),
              ),
            ),
            HeightC(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Consumer<BottomBarNavBarProvider>(
                  builder: (context, value, child) {
                return PrimaryButton(
                    text: MyText.yes,
                    onTap: () async {
                      print("token before ${getToken()}");
                      await setClearData();
                      print("token after ${getToken()}");
                      value.changePage(0);
                      GoRouter.of(context).goNamed(MyRoutes.LoginViewScreen);
                    },
                    color: MyColors.blue_clr);
              }),
            ),
            HeightC(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryButton(
                text: MyText.no,
                onTap: () {
                  GoRouter.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
