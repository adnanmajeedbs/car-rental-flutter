mixin Variables {
  //signup
  Map<String, String> signUpVariable(
      {required String password,
      required String mobile,
      required String email,
      required String username}) {
    Map<String, String> jsonBody = {
      "username": username,
      "email": email,
      "mobile": mobile,
      "password": password
    };
    return jsonBody;
  }

  //login
  Map<String, String> loginVariable({
    required String email,
    required String password,
  }) {
    Map<String, String> jsonBody = {
      "email": email,
      "password": password,
    };
    return jsonBody;
  }

  //otp varification
  Map<String, dynamic> otpVarificationVariable({
    required String email,
    required int enterOtp,
  }) {
    Map<String, dynamic> jsonBody = {
      "email": email,
      "enteredOTP": enterOtp,
    };
    return jsonBody;
  }

  //forgetPasswordEmail
  Map<String, dynamic> forgetEmailVariable({
    required String email,
  }) {
    Map<String, dynamic> jsonBody = {
      "email": email,
    };
    return jsonBody;
  }

  //reset password
  Map<String, String> restPasswordVariable(
      {required String newPassword, required String confirmPassword}) {
    Map<String, String> jsonBody = {
      "email": "fakihakhalil06@gmail.com",
      "newPassword": newPassword
    };
    return jsonBody;
  }

  //reset password
  Map<String, String> orderInfoVariable() {
    Map<String, String> jsonBody = {
      "carId": "656d7b90cd4568c87dc66c0a",
      "Name": "fakihakhalil",
      "PhoneNo": "0332069055",
      "Address": "jinnah town",
      "Town": "dfvnrfmksdrnfsefn",
      "pickupLocation": "jinnah town sadiqabad",
      "pickupDate": "2024-12-15",
      "pickupTime": "20:00:00",
      "dropOffLocation": "Wapda town lahore",
      "dropOffDate": "2025-12-20",
      "dropOffTime": "18:00:00",
      "cardNo": "3939393939392092020",
      "ExpDate": "2025-05-12",
      "cardHolder": "faizan",
      "cvc": "383939"
    };
    return jsonBody;
  }
}
