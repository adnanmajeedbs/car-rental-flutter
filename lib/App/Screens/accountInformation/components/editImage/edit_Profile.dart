import 'package:chartercar/App/Screens/accountInformation/components/editImage/camera_Gallery_Popup.dart';
import 'package:chartercar/App/Screens/accountInformation/components/editImage/new_profile_Image.dart';
import 'package:chartercar/App/Screens/accountInformation/provider/imageProvider.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditProfileImage extends StatelessWidget {
  const EditProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PickImageProvider>(
      builder: (context, value, child) {
        return Stack(
          children: [
            // profile pic
            Container(
              height: 92,
              width: 92,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(ImagePath.profileImage),
                    fit: BoxFit.cover),
              ),
              // new profile pic
              child: NewProfileImage(),
            ),
            // edit profile pic button
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  vibrate();
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CameraGalleryImagePopUP();
                      });
                },
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: MyColors.blue_clr,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.light_grey_90A3BF_Color,
                        blurRadius: 13,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.edit,
                    color: MyColors.appClr,
                    size: 16,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
