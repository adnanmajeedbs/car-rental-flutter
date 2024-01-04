import 'dart:convert';
import 'package:chartercar/App/Screens/Authentication%20Screens/model/loginModel.dart';
import 'package:chartercar/App/apis_const/client.dart';
import 'package:chartercar/App/apis_const/end_points.dart';
import 'package:chartercar/App/apis_const/headers.dart';
import 'package:http/http.dart' as http;
import 'package:chartercar/App/Common/toast_Message/toast_Message.dart';

mixin AuthService {
//
// signup
//
  Future<bool> signUpApiService(
      {required Map<String, dynamic> variables}) async {
    bool result = false;
    try {
      Map<String, String>? header = await HeaderApi().headerAPI();
      var respose = await http.post(
        Uri.parse(ClientAPI.client + EndPointApi.endPointSignUp),
        body: jsonEncode(variables),
        headers: header,
      );
      print('hitted......');
      var responseData = jsonDecode(respose.body.toString());
      print(jsonDecode(respose.body.toString()));

      if (respose.statusCode >= 200 && respose.statusCode < 300) {
        print("Succeed");
        showToastMessage(responseData["message"].toString());

        result = true;
      } else {
        print(respose.statusCode);
        print("failed");
        print(responseData["message"].toString());
        showToastMessage(responseData["message"].toString());
        result = false;
      }
    } catch (e) {
      print("exeption----------->    ${e.toString()}");
      result = false;
    }
    return result;
  }

//
//login
//
  Future<LoginInfo?> loginApiService(
      {required Map<String, dynamic> variables}) async {
    LoginInfo? result;
    try {
      Map<String, String>? header = await HeaderApi().headerAPI();
      var respose = await http.post(
        Uri.parse(ClientAPI.client + EndPointApi.endPointLogin),
        body: jsonEncode(variables),
        headers: header,
      );
      print('hitted......');
      var responseData = jsonDecode(respose.body.toString());
      result = LoginInfo.fromJson(responseData);
      showToastMessage(responseData["message"].toString());
      // print(jsonDecode(respose.body.toString()));
    } catch (e) {
      print("exeption----------->    ${e.toString()}");
    }

    return result;
  }

  //
  //otpValid
  //

  Future<LoginInfo?> otpVarificationApiService(
      {required Map<String, dynamic> variables}) async {
    LoginInfo? result;
    try {
      Map<String, String>? header = await HeaderApi().headerAPI();
      var respose = await http.post(
        Uri.parse(ClientAPI.client + EndPointApi.endPointValidOtp),
        body: jsonEncode(variables),
        headers: header,
      );
      print('hitted......');
      var responseData = jsonDecode(respose.body.toString());
      print(jsonDecode(respose.body.toString()));

      if (respose.statusCode >= 200 && respose.statusCode < 300) {
        print("Succeed");

        showToastMessage(responseData["message"].toString());

        result = LoginInfo.fromJson(responseData);
      } else {
        print(respose.statusCode);
        print("failed");
        print(responseData["message"].toString());
        showToastMessage(responseData["message"].toString());
      }
    } catch (e) {
      print("exeption----------->    ${e.toString()}");
    }
    return result;
  }
//
//forgetEmail
//

  Future<bool> forgetEmailApiService(
      {required Map<String, dynamic> variables}) async {
    bool result = false;
    try {
      Map<String, String>? header = await HeaderApi().headerAPI();
      var respose = await http.post(
        Uri.parse(ClientAPI.client + EndPointApi.endPointResetPasswordEmail),
        body: jsonEncode(variables),
        headers: header,
      );
      print('hitted......');
      var responseData = jsonDecode(respose.body.toString());
      print(jsonDecode(respose.body.toString()));

      if (respose.statusCode >= 200 && respose.statusCode < 300) {
        print("Succeed");
        showToastMessage(responseData["message"].toString());

        result = true;
      } else {
        print(respose.statusCode);
        print("failed");
        print(responseData["message"].toString());
        showToastMessage(responseData["message"].toString());
        result = false;
      }
    } catch (e) {
      print("exeption----------->    ${e.toString()}");
      result = false;
    }
    return result;
  }

//
//forget
//

  Future<bool> restPasswordService(
      {required Map<String, dynamic> variables}) async {
    bool result = false;
    print(variables);
    try {
      Map<String, String>? header = await HeaderApi().headerAPI();
      var respose = await http.post(
        Uri.parse(ClientAPI.client + EndPointApi.endPointResetPassword),
        body: jsonEncode(variables),
        headers: header,
      );
      print('hitted......');
      var responseData = jsonDecode(respose.body.toString());
      print(jsonDecode(respose.body.toString()));

      if (respose.statusCode >= 200 && respose.statusCode < 300) {
        print("Succeed");
        showToastMessage(responseData["message"].toString());

        result = true;
      } else {
        print(respose.statusCode);
        print("failed");
        print(responseData["message"].toString());
        showToastMessage(responseData["message"].toString());
        result = false;
      }
    } catch (e) {
      print("exeption----------->    ${e.toString()}");
      result = false;
    }
    return result;
  }
}
