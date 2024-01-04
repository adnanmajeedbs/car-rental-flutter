import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryTextButton.dart';
import 'package:chartercar/App/Screens/OnBoardingScreen/Provider/OnBoardingProvider.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class OnBoardingBottomSheet extends StatelessWidget {
  const OnBoardingBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnBoardingProvider>(
      builder: (context, value, child) {
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 0, 36, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryTextButton(
                      text: MyText.onBoardingSkip,
                      onTap: () {
                        GoRouter.of(context).goNamed(MyRoutes.LoginViewScreen);
                      },
                      textStyle: MyTextStyle.Onboarding_Skip_Next_Button,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 34),
                        height: 8,
                        width: 43,
                        child: Consumer<OnBoardingProvider>(
                          builder: (context, value, child) {
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    index > 0 ? WidthC(6) : WidthC(0),
                                    AnimatedContainer(
                                      curve: Curves.easeInOut,
                                      duration: Duration(milliseconds: 500),
                                      width:
                                          index == value.currentIndex ? 15 : 8,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: index == value.currentIndex
                                              ? Color(0xFF2387E0)
                                              : Colors.white),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    PrimaryTextButton(
                      text: MyText.onBoardingNext,
                      onTap: () {
                        value.isLastPage
                            ? GoRouter.of(context)
                                .goNamed(MyRoutes.LoginViewScreen)
                            : value.controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                      },
                      textStyle: MyTextStyle.Onboarding_Skip_Next_Button,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
