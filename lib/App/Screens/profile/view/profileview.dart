import 'package:chartercar/App/Screens/profile/components/customize/customizedprofileTile.dart';
import 'package:chartercar/App/Screens/profile/components/logOutBottomSheet.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../utils/Theme/text_Theme_Data.dart';
import '../../../../utils/svgImages/svgImages.dart';
import '../../../Common/DynamicSpace/SizeBoxC.dart';
import '../../../Common/textHeading/600/textHeading600_20_Black_.dart';
import '../../accountInformation/components/editImage/new_profile_Image.dart';
import '../../accountInformation/provider/accountInformationProvider.dart';
import '../../main Screens/provider/provider.dart';
import '../components/customize/customizedLogOutContainers.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height - 55,
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 19),
                child: TextHeading_600_20_Black(text: MyText.profile),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      HeightC(24),
                      //container
                      Container(
                        padding: EdgeInsets.all(16),
                        height: 92,
                        decoration: BoxDecoration(
                            color: MyColors.blue_clr,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            // Container(
                            //   height: 60,
                            //   width: 60,
                            //   decoration: BoxDecoration(
                            //     image: DecorationImage(
                            //       image: AssetImage(ImagePath.profileImage),
                            //     ),
                            //   ),
                            // ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(ImagePath.profileImage),
                                    fit: BoxFit.cover),
                              ),
                              // new profile pic
                              child: NewProfileImage(),
                            ),
                            Consumer<AccountDetailProvider>(
                                builder: (context, value, child) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      value.name,
                                      style: MyTextStyle.onBoardingParagraph,
                                    ),
                                    Text(
                                      value.email,
                                      style: MyTextStyle
                                          .Secondary_Apple_Button_TextStyle,
                                    )
                                  ],
                                ),
                              );
                            })
                          ],
                        ),
                      ),

                      HeightC(24),
                      //AccountInformation
                      CustomizedProfileTile(
                          image: SvgImages.profile,
                          onTap: () {
                            vibrate();
                            GoRouter.of(context)
                                .pushNamed(MyRoutes.accountInformationView);
                          },
                          text1: MyText.accountInformation,
                          text2: MyText.changeAccountInformation),
                      HeightC(15),
                      //IdentificationVerification
                      Consumer<BottomBarNavBarProvider>(
                          builder: (context, value, child) {
                        return CustomizedProfileTile(
                            image: SvgImages.identification,
                            onTap: () {
                              vibrate();
                              GoRouter.of(context).pushNamed(
                                  MyRoutes.identificationVerificationView);
                            },
                            text1: MyText.identification_Verification,
                            text2: MyText.changeAccountInformation);
                      }),
                      HeightC(15),
                      //notification
                      CustomizedProfileTile(
                          image: SvgImages.notification,
                          onTap: () {
                            vibrate();
                            GoRouter.of(context)
                                .pushNamed(MyRoutes.notificationView);
                          },
                          text1: MyText.notification,
                          text2: MyText.changeAccountInformation),
                      HeightC(15),
                      //

                      Consumer<BottomBarNavBarProvider>(
                          builder: (context, valuue1, child) {
                        return CustomizedLogOutTile(
                            image: SvgImages.logOut,
                            onTap: () {
                              vibrate();
                              showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                context: context,
                                builder: (BuildContext context) {
                                  return LogOutbottomSheet();
                                },
                              );
                            },
                            text: MyText.logOut);
                      })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
