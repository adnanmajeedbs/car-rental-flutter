import 'package:flutter/material.dart';

class AbscureTextProvider extends ChangeNotifier {
  //login

  bool _loginAbscure = true;
  bool get loginAbscure => _loginAbscure;
  void toggleLoginAbscure() {
    _loginAbscure = !_loginAbscure;
    notifyListeners();
  }

  //sigup
  bool _signUpAbscure = true;
  bool get signUpAbscure => _signUpAbscure;
  void toggleSignUpAbscure() {
    _signUpAbscure = !_signUpAbscure;
    notifyListeners();
  }

  //reset
  bool _resetAbscure = true;
  bool get resetAbscure => _resetAbscure;
  void toggleResetAbscure() {
    _resetAbscure = !_resetAbscure;
    notifyListeners();
  }

  // confirm
  bool _confirmAbscure = true;
  bool get confirmAbscure => _confirmAbscure;
  void toggleConfirmAbscure() {
    _confirmAbscure = !_confirmAbscure;
    notifyListeners();
  }
}
