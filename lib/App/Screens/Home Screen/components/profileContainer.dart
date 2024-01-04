import 'package:chartercar/App/Common/textHeading/600/textHeading600_16_Black.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Routes/routes_constant.dart';
import '../../../../utils/vibration/vibrattion.dart';
import '../../../Common/textHeading/600/textHeading600_12 _grey.dart';
import '../../accountInformation/components/editImage/new_profile_Image.dart';
import '../../accountInformation/provider/accountInformationProvider.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Consumer<AccountDetailProvider>(builder: (context, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                vibrate();
                GoRouter.of(context).pushNamed(MyRoutes.accountInformationView);
              },
              child: Row(
                children: [
                  //image
                  // Container(
                  //   height: 48,
                  //   width: 48,
                  //   decoration: BoxDecoration(
                  //       shape: BoxShape.circle,
                  //       image: DecorationImage(
                  //         image: AssetImage(
                  //           ImagePath.profileImage,
                  //         ),
                  //         fit: BoxFit.cover,
                  //       )),
                  // ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(ImagePath.profileImage),
                          fit: BoxFit.cover),
                    ),
                    // new profile pic
                    child: NewProfileImage(),
                  ),

                  //column of name
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: TextHeading_600_16_Black(text: value.name)),
                        TextHeading_600_12_Grey(
                            text: MyText.explore_vehicle_for_rent),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //container
            GestureDetector(
              onTap: () {
                vibrate();
                GoRouter.of(context).pushNamed(MyRoutes.notificationView);
              },
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    border: Border.all(color: MyColors.border_container),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/icons/notification.png",
                      ),
                      scale: 1.8,
                    )),
              ),
            ),
          ],
        );
      }),
    );
  }
}
