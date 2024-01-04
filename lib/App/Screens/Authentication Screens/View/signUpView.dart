import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryButton.dart';
import 'package:chartercar/App/Common/TextFeild/authentication%20TextFeilds/gmailtaxtField.dart';
import 'package:chartercar/App/Common/TextFeild/authentication%20TextFeilds/nameTextFeild.dart';
import 'package:chartercar/App/Common/TextFeild/authentication%20TextFeilds/passwordSignUpTextField.dart';
import 'package:chartercar/App/Common/TextFeild/authentication%20TextFeilds/phoneNoTextFeild.dart';
import 'package:chartercar/App/Common/heading_And_Text.dart/Custom_Heading_And_Text.dart';
import 'package:chartercar/App/Common/toast_Message/toast_Message.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/TermsConditioncheckBox.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/Buttons/signInAppleButton.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/Buttons/signInFaceBookButton.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/Buttons/signInGoogleButton.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/myRichText.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../Common/textHeading/500/textHeading_500_14_Grey _Black.dart';

class SignUpViewScreen extends StatelessWidget {
  SignUpViewScreen({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Consumer<AuthProvider>(builder: (context, value, child) {
        return Form(
          key: formKey,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Custom_Heading_And_Text(
                    heading: MyText.sign_Up,
                    text: MyText.enter_Email_password,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),

                  //Name Text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextHeading_500_14_Black(
                        text: MyText.name_heading_textFeild),
                  ),
                  HeightC(8),
                  //NameTextFeild
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: NameCustomTextField(
                      controller: value.nameControllar,
                      hintText: "Enter Your Full Name",
                      labelText: "Enter Your Full Name",
                    ),
                  ),

                  HeightC(24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextHeading_500_14_Black(text: MyText.phoneNo),
                  ),

                  HeightC(8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: PhoneCustomTextField(
                        controller: value.phoneController,
                        hintText: "Enter your Phone no",
                        labelText: "Enter your Phone no"),
                  ),
                  HeightC(24),
                  //EmailText
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextHeading_500_14_Black(text: MyText.email),
                  ),
                  HeightC(8),

                  // TextField Email
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GmailCustomTextField(
                      controller: value.emailController,
                      hintText: "Enter Your Email",
                      labelText: "Enter Your Email",
                    ),
                  ),
                  //PasswordText

                  HeightC(24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextHeading_500_14_Black(text: MyText.password),
                  ),
                  HeightC(8),

                  //Password TextFeild
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: PasswordSignUpCustomTextfield(
                        controller: value.passwordController,
                        hintText: "Enter Your Password",
                        labelText: "Enter Your Password",
                        abscureText: true),
                  ),
                  HeightC(25),
                  //checkbox of terms and conditions
                  AgreeWithTermsCheckBox(),
                  HeightC(25),
                  //register Button
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: PrimaryButton(
                        text: "Register",
                        onTap: () async {
                          print("function call");
                          if (formKey.currentState!.validate()) {
                            if (value.agreeWithCondition == false) {
                              showToastMessage(
                                  "agree Terms & Conditions first");
                            } else {
                              if (await value.signUpApi()) {
                                print('true');
                                value.signupTextFeildClear();
                                GoRouter.of(context)
                                    .pushNamed(MyRoutes.OtpScreen);
                              } else {
                                print('false');
                              }
                            }
                          }
                        },
                      )),
                  HeightC(24),
                  //RichText
                  MyRichTextSignUp(),
                  HeightC(33),
                  //buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        // Google

                        SignInGoogleButton(),

                        HeightC(24),

                        // Facebook

                        SignInFaceBookButton(),

                        HeightC(24),

                        //Apple

                        SignInAppleButton(),

                        HeightC(100),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      })),
    );
  }
}
