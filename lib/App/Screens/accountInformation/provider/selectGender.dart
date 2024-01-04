import 'package:flutter/material.dart';

class SelectGenderProvider extends ChangeNotifier {
  int _index = 0;

  int get index => _index;
  void isSelectedGender(int index) {
    _index = index;

    notifyListeners();
  }
}
