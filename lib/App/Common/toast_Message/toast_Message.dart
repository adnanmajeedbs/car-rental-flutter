import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToastMessage(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: MyColors.light_blue_clr,
    textColor: MyColors.black_clr,
    fontSize: 16.0,
  );
}
