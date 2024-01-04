// class HeaderApi {
//   Map<String, String> header = {
//     "Accept": "*/*",
//     "Content-Type": "application/json",
//   };
// }
import 'package:chartercar/App/cache/get_shared_pref.dart';

class HeaderApi with SharedPrefGet {
  Future<Map<String, String>> headerAPI() async {
    // String key = await getToken();
    Map<String, String> header = {
      "Accept": "*/*",
      "Content-Type": "application/json",
    };
    return header;
  }
}
