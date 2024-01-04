import 'package:flutter/material.dart';

class ConfirmationDetailProvider extends ChangeNotifier {
  bool _agreeWithCondition = false;
  bool _agreeWithNoSpam = false;
  bool get agreeWithCondition => _agreeWithCondition;
  bool get agreeWithNoSpam => _agreeWithNoSpam;

  void agreeWithTermCondition() {
    _agreeWithCondition = !_agreeWithCondition;
    notifyListeners();
  }

  void agreeWithSendingNoSpam() {
    _agreeWithNoSpam = !_agreeWithNoSpam;
    notifyListeners();
  }
}
