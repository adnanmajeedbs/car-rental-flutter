import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryButton.dart';
import 'package:chartercar/App/Common/appBar/cumstom_App_Bar_Logo.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../utils/Routes/routes_constant.dart';
import '../../../../utils/Text/text.dart';
import '../../../Common/TextFeild/authentication TextFeilds/gmailtaxtField.dart';
import '../../../Common/heading_And_Text.dart/Custom_Heading_And_Text.dart';
import '../../../Common/textHeading/500/textHeading_500_14_Grey _Black.dart';

class ForgetPasswordView extends StatelessWidget {
  ForgetPasswordView({super.key});
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //app bar
                  Custom_App_Bar_Logo(),
                  //heading
                  Container(
                    child: Custom_Heading_And_Text(
                      heading: MyText.forgotPasswordV,
                      text: MyText.enter_your_registered_email_address,
                    ),
                  ),
                  TextHeading_500_14_Black(text: MyText.email),
                  HeightC(6),
                  GmailCustomTextField(
                    controller: value.emailController,
                    hintText: "Enter Your Email",
                    labelText: "Enter Your Email",
                  ),
                  HeightC(24),
                  PrimaryButton(
                    text: MyText.send,
                    onTap: () async {
                      print("function call");
                      if (formKey.currentState!.validate()) {
                        if (await value.forgetEmailApi()) {
                          print('true');

                          GoRouter.of(context).pushNamed(MyRoutes.OtpScreen);
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
