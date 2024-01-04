import 'dart:async';
import 'package:chartercar/App/cache/get_shared_pref.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SharedPrefGet {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
      String token = await getToken();
      token == ''
          ? context.goNamed(MyRoutes.OnBoarding)
          : context.goNamed(MyRoutes.MainScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImagePath.splashScreen), fit: BoxFit.cover)),
      ),
    );
  }
}
