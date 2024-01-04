import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';

class MyTextStyle {
  static const String PlusJakartaSans = 'PlusJakartaSans';
  //checkbox
  static const TextStyle checkbox_terms_and_condition_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    color: MyColors.black_all_3,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle terms_and_condition_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    color: MyColors.blue_clr,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.underline,
  );
  static const TextStyle car_Detail_paragraph_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    height: 2,
    color: MyColors.light_grey_90A3BF_Color,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle terms_and_condition_text_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    color: MyColors.black_all_3,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.5,
  );

  static const TextStyle heading_400_14_textField_text = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.textField_text_Color,
    fontWeight: FontWeight.w400,
  );
  //RichText of Signin
  static const TextStyle richText_dontHaveAnAccount_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 15,
    color: MyColors.black_all_3,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle richText_Signup_signin_text_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 15,
    color: MyColors.blue_clr,
    fontWeight: FontWeight.w400,
  );
//OnBoarding
  static const TextStyle onBoardingParagraph = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: MyColors.white_clr,
  );
  static const TextStyle heading_500_20__Black_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: MyColors.black_all_3,
  );
  static const TextStyle Onboarding_Skip_Next_Button = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle heading_500_12__Black_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    color: MyColors.black_all_3,
    fontWeight: FontWeight.w500,
  ); //Button's Text
  static const TextStyle Button_Text = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 16,
    color: MyColors.white_clr,
    fontWeight: FontWeight.w500,
  );
//Forget password
  static const TextStyle ForgetPassword_signup_Text = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.blue_clr,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle heading_500_14__Black_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.black_all_3,
    fontWeight: FontWeight.w500,
  );

//SecondaryButton
//Google
  static const TextStyle Secondary_Google_Button_TextStyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.primary_Button_Color,
    fontWeight: FontWeight.w500,
  );
//facebook
  static const TextStyle Secondary_FaceBook_Button_TextStyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.secondary_Facebook_Apple_Button_Text_Color,
    fontWeight: FontWeight.w500,
  );
//Apple
  static const TextStyle Secondary_Apple_Button_TextStyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.secondary_Facebook_Apple_Button_Text_Color,
    fontWeight: FontWeight.w500,
  ); //richtext otp paragraph
  static const TextStyle heading_500_12__Grey_textstyle = TextStyle(
      fontFamily: PlusJakartaSans,
      fontSize: 12,
      color: MyColors.light_grey_90A3BF_Color,
      fontWeight: FontWeight.w500);
  static const TextStyle heading_500_12__Blue_textstyle = TextStyle(
      fontFamily: PlusJakartaSans,
      fontSize: 12,
      color: MyColors.blue_clr,
      fontWeight: FontWeight.w500); //otp timer richtext
  static const TextStyle Rich_Text_otp_timer_TextStyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    letterSpacing: 0.2,
    color: MyColors.light_grey_90A3BF_Color,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle heading_500_14__Grey_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.light_grey_90A3BF_Color,
    fontWeight: FontWeight.w500,
  ); //search
  static const TextStyle search_something_here_textStyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.write_something_down,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle ease_of_doing_a_car_rental_safely_lines_textStyle =
      TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    color: MyColors.white_clr,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle categoriesText_textStyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    color: MyColors.black_clr,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle recent_all_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.light_grey_90A3BF_Color,
    fontWeight: FontWeight.w500,
  ); //catagouries and see all
  static const TextStyle categories_textStyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.black_all_3,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle recent_all_2ndPage_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    color: MyColors.light_grey_90A3BF_Color,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle car_Detail_typecar_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    color: MyColors.light_grey_90A3BF_Color,
    fontWeight: FontWeight.w500,
  );
  //container
  static const TextStyle the_Best_Platform_for_Car_Rental = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 16,
    color: MyColors.white_clr,
    fontWeight: FontWeight.w600,
  );
//Login
  static const TextStyle heading_600_20__Black_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 20,
    color: MyColors.black_all_3,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle otp_time = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    letterSpacing: 0.2,
    color: MyColors.black_all_3,
    fontWeight: FontWeight.w600,
  );
//homeScreen
//profile
  static const TextStyle heading_600_16_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 16,
    color: MyColors.black_clr,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle heading_600_16_textStyle_two = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 16,
    color: MyColors.black_clr,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle heading_600_12__Grey_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    color: MyColors.light_grey_90A3BF_Color,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle heading_600_14_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.recent_main,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle heading_600_1_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.recent_main,
    fontWeight: FontWeight.w600,
  );
//
  static const TextStyle rental_Car_textStyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    color: MyColors.blue_clr,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle rental_Car_2_textStyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    color: MyColors.white_clr,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle heading_600_12_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 12,
    color: MyColors.black_clr,
    fontWeight: FontWeight.w600,
  );

//resend
  static const TextStyle resend_text_textStyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.otp_resend_text_color,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle resend_text_inactiv2 = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.light_grey_90A3BF_Color,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle categoriesText_textStyle_two = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.black_clr,
    fontWeight: FontWeight.w700,
  );

  //
  //  recent seeall

  static const TextStyle recent_all_day_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 16,
    color: MyColors.light_grey_90A3BF_Color,
    fontWeight: FontWeight.w700,
  );

  //carDetail
  static const TextStyle rentnow_button_textstyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 16,
    color: MyColors.white_clr,
    fontWeight: FontWeight.w700,
  );

  //
  static const TextStyle heading_700_20_textStyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 20,
    color: MyColors.black_clr,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle notification_Text_Blue_TextStyle = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.blue_clr,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle heading_700_16_textStyle_two = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 16,
    color: MyColors.black_clr,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle heading_700_15_textStyle_two = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 15,
    color: MyColors.black_clr,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle heading_700_14_textStyle_two = TextStyle(
    fontFamily: PlusJakartaSans,
    fontSize: 14,
    color: MyColors.black_clr,
    fontWeight: FontWeight.w700,
  );

  //
  //
  //recentseeall
}
