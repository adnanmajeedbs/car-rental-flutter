import 'package:chartercar/App/Common/TextFeild/authentication%20TextFeilds/passwordSignUpTextField.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/components/confirmPasswodcustomTextFeild.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Routes/routes_constant.dart';
import '../../../../utils/Text/text.dart';
import '../../../Common/DynamicSpace/SizeBoxC.dart';
import '../../../Common/MyButtons/PrimaryButton.dart';
import '../../../Common/appBar/cumstom_App_Bar_Logo.dart';
import '../../../Common/heading_And_Text.dart/Custom_Heading_And_Text.dart';
import '../../../Common/textHeading/500/textHeading_500_14_Grey _Black.dart';

class Reset_Password extends StatefulWidget {
  Reset_Password({super.key});

  @override
  State<Reset_Password> createState() => _Reset_PasswordState();
}

class _Reset_PasswordState extends State<Reset_Password> {
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //app bar
                  Custom_App_Bar_Logo(),
                  //heading
                  Container(
                    child: Custom_Heading_And_Text(
                      heading: MyText.reset_Password,
                      text: MyText.enter_your_new_password_and_confirm_password,
                    ),
                  ),
                  TextHeading_500_14_Black(text: MyText.password),
                  HeightC(6),
                  //reset Password TextFeild

                  PasswordSignUpCustomTextfield(
                      controller: value.passwordController,
                      hintText: "Enter Your Password",
                      labelText: "Enter Your Password",
                      abscureText: true),
                  HeightC(24),
                  TextHeading_500_14_Black(text: MyText.reset_Password),
                  HeightC(6),
                  //confirm Password TextFeild

                  ConfirmPasswortCustomTextfield(
                      controller: value.ConfirmPasswordController,
                      hintText: "Enter Your Password",
                      labelText: "Enter Your Password",
                      abscureText: true),

                  HeightC(24),
                  PrimaryButton(
                    text: MyText.confirm_otp,
                    onTap: () async {
                      print("function call");
                      if (formKey.currentState!.validate()) {
                        if (await value.restPasswordApi()) {
                          print('true');

                          GoRouter.of(context)
                              .pushNamed(MyRoutes.LoginViewScreen);
                        } else {
                          print('false');
                        }
                      }
                    },
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
