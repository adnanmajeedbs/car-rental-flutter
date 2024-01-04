import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Screens/Home%20Screen/components/blueImageContainer.dart';
import 'package:chartercar/App/Screens/catagouries/components/categoriesView.dart';
import 'package:chartercar/App/Screens/Home%20Screen/components/profileContainer.dart';
import 'package:chartercar/App/Screens/recents/components/recent.dart';
import 'package:chartercar/App/Screens/Home%20Screen/components/textButton&Filter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 16),
          child: Column(
            children: [
//profile container
              ProfileContainer(),

              HeightC(12),
//row of textButton and filter
              TextButtonFilter(),
              HeightC(12),

//blue container of car
              Expanded(
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      BlueImageContainer(),
                      //list of catagouries
                      CategoriesView(),

                      //list of recent
                      Recent(),
                    ],
                  ),
                ),
              ),
              HeightC(10)
            ],
          ),
        ),
      ),
    );
  }
}
