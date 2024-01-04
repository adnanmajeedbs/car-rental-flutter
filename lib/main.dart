import 'package:chartercar/App/Screens/Authentication%20Screens/Provider/auth_Provider.dart';
import 'package:chartercar/App/Screens/OnBoardingScreen/Provider/OnBoardingProvider.dart';
import 'package:chartercar/App/Screens/accountInformation/provider/accountInformationProvider.dart';
import 'package:chartercar/App/Screens/accountInformation/provider/imageProvider.dart';
import 'package:chartercar/App/Screens/accountInformation/provider/selectGender.dart';
import 'package:chartercar/App/Screens/carDetails/provider/car_Detail_provider.dart';
import 'package:chartercar/App/Screens/favourite/provider/favouriteProvider.dart';
import 'package:chartercar/App/Screens/identificationVerification/provider/licenceProvider.dart';
import 'package:chartercar/App/Screens/main%20Screens/provider/provider.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/provider/user_travelling_payment_Provider.dart';
import 'package:chartercar/App/nasagetApis/provider/nasaProvider.dart';
import 'package:chartercar/utils/Routes/routes_configration.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'App/Common/TextFeild/provider/abscureText.dart';
import 'App/Screens/Home Screen/provider/searchProvider.dart';
import 'App/Screens/confirmationDetail/provider/confirmationDetailProvider.dart';
import 'App/Screens/filter_Screen/provider/filterDropDown_Provider.dart';
import 'App/Screens/review_screen/provider/rating_Provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark));

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (_) {
      runApp(
        MyApp(),
      );
    },
  );
}

// void main() {
//   runApp(const MyApp());
// }
// localdb
// sqlite for high

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => OnBoardingProvider()),
          ChangeNotifierProvider(create: (_) => AuthProvider()),
          ChangeNotifierProvider(create: (_) => AbscureTextProvider()),
          ChangeNotifierProvider(create: (_) => BottomBarNavBarProvider()),
          ChangeNotifierProvider(create: (_) => RecentSearchProvider()),

          ChangeNotifierProvider(create: (_) => CarDetailProvider()),
          ChangeNotifierProvider(
              create: (_) => UserTravellingPaymentDetailProvider()),
          ChangeNotifierProvider(create: (_) => AccountDetailProvider()),
          ChangeNotifierProvider(create: (_) => PickImageProvider()),
          ChangeNotifierProvider(create: (_) => SelectGenderProvider()),
          ChangeNotifierProvider(create: (_) => LicenceProvider()),
          ChangeNotifierProvider(create: (_) => FilterDropDownProvider()),
          ChangeNotifierProvider(create: (_) => FavouriteProvider()),

          ChangeNotifierProvider(create: (_) => ConfirmationDetailProvider()),
          ChangeNotifierProvider(create: (_) => RatingProvider()),
          ChangeNotifierProvider(create: (_) => NasaProvider()),
          // ChangeNotifierProvider(create: (_) => ()),
          // ChangeNotifierProvider(create: (_) => ()),
          // ChangeNotifierProvider(create: (_) => ()),
          // ChangeNotifierProvider(create: (_) => ()),
          // ChangeNotifierProvider(create: (_) => ()),

          // ChangeNotifierProvider(create: (_) => ()),

          // ChangeNotifierProvider(create: (_) => ()),
        ],
        child: MaterialApp.router(
          builder: (_, child) {
            return ScrollConfiguration(
                behavior: CustomBehavior(), child: child!);
          },
          routerConfig: router,
          theme: ThemeData(
            scaffoldBackgroundColor: MyColors.appClr,
          ),
        ));
    // return MaterialApp.router(
    //   routerConfig: router,
    // );
  }
}

class CustomBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return StretchingOverscrollIndicator(
      axisDirection: AxisDirection.down,
      child: child,
    );
  }
}

// flutter build apk --split-per-abi
