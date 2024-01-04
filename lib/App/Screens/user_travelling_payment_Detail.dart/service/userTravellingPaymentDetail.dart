import 'dart:convert';

import 'package:chartercar/App/apis_const/client.dart';
import 'package:chartercar/App/apis_const/end_points.dart';
import 'package:chartercar/App/apis_const/headers.dart';
import 'package:http/http.dart' as http;
import 'package:chartercar/App/Common/toast_Message/toast_Message.dart';

mixin UserTravellingPaymentDetailService {
//
// signup
//
  Future<bool> orderDetailService(
      {required Map<String, dynamic> variables}) async {
    bool result = false;
    try {
      Map<String, String>? header = await HeaderApi().headerAPI();
      var respose = await http.post(
        Uri.parse(ClientAPI.client + EndPointApi.endPointOrderInfo),
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
