import 'package:flutter/material.dart';

class AccountDetailProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController postCodeController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  String _name = "Taimor Chugati";
  String _phoneNo = "3033247764";
  String _email = "abcd@gmail.com";
  String _postCode = "64200";
  String _address = "RahimYarKhan";
  String get name => _name;
  String get phoneNo => _phoneNo;
  String get email => _email;
  String get postCode => _postCode;
  String get address => _address;

  void onSave() {
    if (nameController.text.isNotEmpty) _name = nameController.text;
    if (phoneController.text.isNotEmpty) _phoneNo = phoneController.text;
    if (emailController.text.isNotEmpty) _email = emailController.text;
    if (postCodeController.text.isNotEmpty) _postCode = postCodeController.text;
    if (addressController.text.isNotEmpty) _address = addressController.text;
    addressController.clear();
    postCodeController.clear();
    phoneController.clear();
    emailController.clear();
    nameController.clear();
    notifyListeners();
  }
}
