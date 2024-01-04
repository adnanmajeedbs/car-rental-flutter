import 'dart:developer';

import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryButton.dart';
import 'package:chartercar/App/Common/TextFeild/authentication%20TextFeilds/gmailtaxtField.dart';
import 'package:chartercar/App/Common/TextFeild/authentication%20TextFeilds/passwordSignInTextFeild.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/myRichTextSignIn.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/Buttons/signInAppleButton.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/Buttons/signInFaceBookButton.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/Buttons/signInGoogleButton.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../utils/vibration/vibrattion.dart';
import '../../../Common/heading_And_Text.dart/Custom_Heading_And_Text.dart';
import '../../../Common/textHeading/500/textHeading_500_14_Grey _Black.dart';
import '../../../Common/toast_Message/toast_Message.dart';

// ignore: must_be_immutable
class LoginViewScreen extends StatefulWidget {
  LoginViewScreen({super.key});

  @override
  State<LoginViewScreen> createState() => _LoginViewScreenState();
}

class _LoginViewScreenState extends State<LoginViewScreen> {
  final formKey = GlobalKey<FormState>();

  DateTime lastPressed = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          final now = DateTime.now();
          final maxDuration = Duration(seconds: 2);
          final isWarning = now.difference(lastPressed) > maxDuration;
          if (isWarning) {
            lastPressed = DateTime.now();
            showToastMessage("Double tap to close app");
            return false;
          } else {
            return true;
          }
        },
        child: SafeArea(
            child: Consumer<AuthProvider>(builder: (context, value, child) {
          return Form(
            key: formKey,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                        heading: MyText.login,
                        text: MyText.enter_Email_password,
                      ),
                      //EmailText
                      TextHeading_500_14_Black(text: MyText.email),

                      HeightC(8),

                      // TextField Email
                      GmailCustomTextField(
                        controller: value.emailController,
                        hintText: "Enter Your Email",
                        labelText: "Enter Your Email",
                      ),
                      //PasswordText

                      HeightC(24),
                      TextHeading_500_14_Black(text: MyText.password),

                      HeightC(8),

                      //Password TextFeild
                      PasswordSignInCustomTextfield(
                          controller: value.passwordController,
                          hintText: "Enter Your Password",
                          labelText: "Enter Your Password",
                          abscureText: true),

                      HeightC(24),
                      //Forget password Text
                      GestureDetector(
                        onTap: () {
                          vibrate();
                          GoRouter.of(context)
                              .pushNamed(MyRoutes.forgetPassword);
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            MyText.forgotPassword,
                            style: MyTextStyle.ForgetPassword_signup_Text,
                          ),
                        ),
                      ),
                      HeightC(24),
                      //Login Button
                      PrimaryButton(
                        text: "Login",
                        onTap: () async {
                          print("function call");
                          if (formKey.currentState!.validate()) {
                            int? statuscode = await value.loginApi();
                            if (statuscode == 201) {
                              print('true');
                              value.loginTextFeildClear();
                              GoRouter.of(context)
                                  .pushNamed(MyRoutes.MainScreen);
                            } else if (statuscode == 400) {
                              log("wrong Password");
                            } else if (statuscode == 401) {
                              log("verify first");
                              GoRouter.of(context)
                                  .pushNamed(MyRoutes.OtpScreen);
                            } else if (statuscode == 404) {
                              log("user not found");
                            } else {
                              log("try again");
                            }
                          }
                        },
                      ),
                      HeightC(24),
                      //RichText
                      MyRichTextSignIn(),
                      HeightC(33),
                      // Google
                      SignInGoogleButton(),
                      HeightC(24),
                      // Facebook
                      SignInFaceBookButton(),
                      HeightC(24),
                      //Apple
                      SignInAppleButton(),
                      HeightC(39),
                    ],
                  ),
                ),
              ),
            ),
          );
        })),
      ),
    );
  }
}
