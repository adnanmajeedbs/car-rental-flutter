import 'dart:async';

import 'package:chartercar/App/Screens/Authentication%20Screens/model/loginModel.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/service/auth_service.dart';
import 'package:chartercar/App/apis_const/variables.dart';
import 'package:chartercar/App/cache/get_shared_pref.dart';
import 'package:chartercar/App/cache/set_shared_pref.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier
    with Variables, SharedPrefSet, SharedPrefGet, AuthService {
  // final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameControllar = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController ConfirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController pin1 = TextEditingController();
  TextEditingController pin2 = TextEditingController();
  TextEditingController pin3 = TextEditingController();
  TextEditingController pin4 = TextEditingController();
  TextEditingController pin5 = TextEditingController();
  TextEditingController pin6 = TextEditingController();

  bool _isAllOTPFilled = false;
  bool get isAllOTPFilled => _isAllOTPFilled;
  late Timer _timer;
  int _seconds = 0;
  int get seconds => _seconds;

  void startTimer() {
    _seconds = 60;
    _startTimer();
    notifyListeners();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        timer.cancel();
        notifyListeners();
      } else {
        _seconds--;
        notifyListeners();
      }
    });
  }

  void resetTimer() {
    _timer.cancel();
    _startTimer();
    notifyListeners();
  }

  void dispose() {
    _timer.cancel();
    super.dispose();
    notifyListeners();
  }

  void toogleisAllOTPFilled() {
    _isAllOTPFilled = pin1.text.isEmpty ||
            pin2.text.isEmpty ||
            pin3.text.isEmpty ||
            pin4.text.isEmpty ||
            pin5.text.isEmpty ||
            pin6.text.isEmpty
        ? false
        : true;
    notifyListeners();
  }

  //checkbox
  bool _agreeWithCondition = false;
  bool get agreeWithCondition => _agreeWithCondition;
  void agreeWithTermCondition() {
    _agreeWithCondition = !_agreeWithCondition;
    notifyListeners();
  }

  //apis

  String tempEmail = '';
  String tempPassword = '';
  bool isOtpHome = true;
  //signup

  Future<bool> signUpApi() async {
    tempEmail = '';
    tempPassword = '';
    startTimer();
    isOtpHome = true;
    bool response = await signUpApiService(
      variables: signUpVariable(
        password: passwordController.text,
        mobile: phoneController.text,
        email: emailController.text,
        username: nameControllar.text,
      ),
    );
    if (response != "") {
      tempEmail = emailController.text;
      tempPassword = passwordController.text;

      signupTextFeildClear();
      notifyListeners();
    } else {
      signupTextFeildClear();
      notifyListeners();
    }
    return response;
  }

  //login
  Future<int?> loginApi() async {
    tempEmail = emailController.text;
    LoginInfo? response = await loginApiService(
      variables: loginVariable(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    if (response?.statusCode == 201) {
      await setLoginInfo(
        id: '${response?.data?.user?.id}',
        token: '${response?.data?.token}',
        userName: '${response?.data?.user?.username}',
        mobile: '${response?.data?.user?.mobile}',
        email: '${response?.data?.user?.email}',
        favouriteCar: '${response?.data?.user?.favouriteCar}',
      );
      notifyListeners();
    }

    return response?.statusCode;
  }

  //otp varification
  Future<bool> otpVarificationApi() async {
    bool success = false;
    String oTP =
        pin1.text + pin2.text + pin3.text + pin4.text + pin5.text + pin6.text;
    int intOtp = int.parse(oTP);

    LoginInfo? response = await otpVarificationApiService(
      variables: otpVarificationVariable(
        email: tempEmail.toLowerCase(),
        enterOtp: intOtp,
      ),
    );
    if (response != null) {
      await setLoginInfo(
        id: '${response.data?.user?.id}',
        token: '${response.data?.token}',
        userName: '${response.data?.user?.username}',
        mobile: '${response.data!.user?.mobile}',
        email: '${response.data!.user?.email?.toLowerCase()}',
        favouriteCar: '${response.data?.user?.favouriteCar}',
      );
      loginTextFeildClear();

      success = true;
      notifyListeners();
    }
    return success;
  }

//forget password email

  Future<bool> forgetEmailApi() async {
    isOtpHome = false;
    startTimer();
    bool response = await forgetEmailApiService(
      variables: forgetEmailVariable(
        email: emailController.text.toLowerCase(),
      ),
    );
    if (response) {
      tempEmail = emailController.text.toLowerCase();
      tempPassword = passwordController.text;
      emailController.clear();
    } else {
      emailController.clear();
    }
    return response;
  }

// reset password
  Future<bool> restPasswordApi() async {
    bool response = await restPasswordService(
      variables: restPasswordVariable(
        newPassword: passwordController.text,
        confirmPassword: ConfirmPasswordController.text,
      ),
    );
    if (response) {
      resetPasswordTextFeildClear();
    } else {
      resetPasswordTextFeildClear();
    }
    return response;
  }

  void clearOtp() {
    pin1.clear();
    pin2.clear();
    pin3.clear();
    pin4.clear();
    pin5.clear();
    pin6.clear();
  }

  void signupTextFeildClear() {
    passwordController.clear();
    phoneController.clear();
    emailController.clear();
    nameControllar.clear();
  }

  void loginTextFeildClear() {
    passwordController.clear();
    emailController.clear();
  }

  void resetPasswordTextFeildClear() {
    passwordController.clear();
    ConfirmPasswordController.clear();
  }
}
