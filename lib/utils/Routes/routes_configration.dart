import 'package:chartercar/App/Screens/Authentication%20Screens/View/LoginView.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/View/signUpView.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/View/forgetPasswordView.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/View/otpview.dart';
import 'package:chartercar/App/Screens/Authentication%20Screens/View/reset_Password.dart';
import 'package:chartercar/App/Screens/ErrorScreen/ErrorScreenView.dart';
import 'package:chartercar/App/Screens/OnBoardingScreen/View/OnBoarding1.dart';
import 'package:chartercar/App/Screens/Splash%20Screen/View/SplashScreen.dart';
import 'package:chartercar/App/Screens/accountInformation/view/accountInformation.dart';
import 'package:chartercar/App/Screens/carDetails/view/carDetail.dart';
import 'package:chartercar/App/Screens/review_screen/view/AllReviewsScreen.dart';
import 'package:chartercar/App/Screens/catagouries/view/categoriesSeeAll.dart';
import 'package:chartercar/App/Screens/filter_Screen/view/filter_Screen.dart';
import 'package:chartercar/App/Screens/recents/view/recentSeeAll.dart';
import 'package:chartercar/App/Screens/Home%20Screen/view/screenView.dart';
import 'package:chartercar/App/Screens/identificationVerification/view/identificationVerification.dart';
import 'package:chartercar/App/Screens/main%20Screens/view/mainScreen.dart';
import 'package:chartercar/App/Screens/profile/view/profileview.dart';
import 'package:chartercar/App/Screens/termsAndCondition/view/termsAndConditions.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/view/travellingDetailView.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/view/userDetailView.dart';
import 'package:chartercar/utils/Routes/routes_constant.dart';
import 'package:chartercar/utils/Routes/transitions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../App/Screens/Authentication Screens/View/otpForgetPassword.dart';
import '../../App/Screens/confirmationDetail/view/confirmationDetail.dart';
import '../../App/Screens/notification/view/notificationView.dart';
import '../../App/Screens/user_travelling_payment_Detail.dart/view/paymetDetail.dart';
import '../../App/Screens/review_screen/view/review_screen.dart';

GoRouter router = GoRouter(
  routes: [
    // GoRoute(
    //     path: '/',
    //     pageBuilder: (context, state) => MaterialPage(child: SplashScreen())),
    GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage(child: SplashScreen())),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.OnBoarding, screen: OnBoardingPage()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.LoginViewScreen, screen: LoginViewScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.SignupViewScreen, screen: SignUpViewScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.OtpScreen, screen: OtpScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.HomeScreen, screen: HomeScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.MainScreen, screen: MainScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.categoriesSeeAll, screen: CategoriesSeeAll()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.recentSeeAllAndSearch,
        screen: RecentSeeAllAndSearch()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.carDetail, screen: CarDetail()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.userDetail, screen: UserDetailView()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.termsAndCondition, screen: TermAndCondition()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.accountInformationView,
        screen: AccountInformationView()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.identificationVerificationView,
        screen: IdentificationVerificationView()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.profileView, screen: ProfileView()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.notificationView, screen: NotificationView()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.travellingDetailView,
        screen: TravellingDetailView()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.filterScreen, screen: FilterScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.forgetPassword, screen: ForgetPasswordView()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.reset_Password, screen: Reset_Password()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.otpForgetPassword, screen: OtpForgetPassword()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.paymentMethod, screen: PaymentMethod()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.confirmationDetail, screen: ConfirmationDetail()),
    transitionsleftToRightPage(
      myRoutes: MyRoutes.allReview,
      screen: AllReviewsScreen(),
    ),
    // transitionsleftToRightPage(myRoutes: MyRoutes.nasa, screen: GetApisNaSA()),

    GoRoute(
        name: MyRoutes.reviewScreen,
        path: '/' + MyRoutes.reviewScreen,
        builder: (context, state) {
          final historyTileModel = (state.extra as Map)['historyTileModel'];
          return ReviewScreen(historyTileModel: historyTileModel);
        }),
  ],
  errorPageBuilder: (context, state) {
    return MaterialPage(child: ErrorScreen());
  },
);
