import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';

class BottomBarNavBarProvider extends ChangeNotifier {
  PageController _controller = PageController();
  PageController get controller => _controller;
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void changePage(int index) {
    _currentIndex = index;
    vibrate();
    controller.jumpToPage(index);
    notifyListeners();
  }
}

//

//
