import 'package:chartercar/App/Common/toast_Message/toast_Message.dart';
import 'package:chartercar/App/Screens/History/view/history_Screen.dart';
import 'package:chartercar/App/Screens/Home%20Screen/view/screenView.dart';
import 'package:chartercar/App/Screens/favourite/view/favouriteView.dart';
import 'package:chartercar/App/Screens/main%20Screens/component/homeBottomNavBar.dart';
import 'package:chartercar/App/Screens/main%20Screens/provider/provider.dart';
import 'package:chartercar/App/Screens/profile/view/profileview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});
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
        child:
            Consumer<BottomBarNavBarProvider>(builder: (context, value, child) {
          return PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: value.controller,
            children: [
              HomeScreen(),
              HistoryScreen(),
              FavouriteView(),
              ProfileView(),
            ],
          );
        }),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
