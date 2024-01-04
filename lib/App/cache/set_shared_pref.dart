import 'package:shared_preferences/shared_preferences.dart';

mixin SharedPrefSet {
  Future<void> setLoginInfo({
    required String id,
    required String userName,
    required String mobile,
    required String email,
    required String token,
    required var favouriteCar,
  }) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('id', id);
    await prefs.setString('userName', userName);
    await prefs.setString('mobile', mobile);
    await prefs.setString('email', email);
    await prefs.setString('token', token);
    await prefs.setString('favouriteCar', favouriteCar);
    print("id is -----------------${id}");
    print("username is -----------------${userName}");
    print("phone is -----------------${mobile}");
    print("email is -----------------${email}");
    print("favouriteCar is -----------------${favouriteCar}");
    print("token is -----------------${token}");
  }

  Future<void> setShowOnboarding({required bool value}) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setBool('showOnBoarding', value);
  }

  Future<void> setProfilePic({required bool value}) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setBool('profilePic', value);
  }

  Future<void> setClearData() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('id', '');
    await prefs.setString('userName', '');
    await prefs.setString('mobile', '');
    await prefs.setString('email', '');
    await prefs.setString('token', '');
    await prefs.setString('favouriteCar', '');
  }
}
