// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../presentation/root_screen.dart';
import '../presentation/screens/activities/activity_screen.dart';
import '../presentation/screens/activities/activity_screen_2.dart';
import '../presentation/screens/activities/activity_screen_3.dart';
import '../presentation/screens/activities/timeline.dart';
import '../presentation/screens/alert_dialogs/alert_dialog_1.dart';
import '../presentation/screens/alert_dialogs/alert_dialog_2.dart';
import '../presentation/screens/alert_dialogs/alert_dialog_3.dart';
import '../presentation/screens/alert_dialogs/alert_dialog_4.dart';
import '../presentation/screens/alert_dialogs/bottom_sheet_1.dart';
import '../presentation/screens/alert_dialogs/bottom_sheet_2.dart';
import '../presentation/screens/alert_dialogs/bottom_sheet_3.dart';
import '../presentation/screens/alert_dialogs/bottom_sheet_4.dart';
import '../presentation/screens/logins/login_design_1/login_screen_1.dart';
import '../presentation/screens/logins/login_design_1/signup_screen_1.dart';
import '../presentation/screens/logins/login_design_2/login_screen_2.dart';
import '../presentation/screens/logins/login_design_2/signup_screen_2.dart';
import '../presentation/screens/logins/login_design_3/login_screen_3.dart';
import '../presentation/screens/logins/login_design_3/signup_screen_3.dart';
import '../presentation/screens/logins/login_design_4/login_screen_4.dart';
import '../presentation/screens/logins/login_design_4/signup_4.dart';
import '../presentation/screens/logins/login_design_4/signup_screen_4.dart';
import '../presentation/screens/logins/login_design_5/login_screen_5.dart';
import '../presentation/screens/logins/login_design_5/signup_screen_5.dart';
import '../presentation/screens/logins/login_design_6/login_screen_6.dart';
import '../presentation/screens/logins/login_design_6/signup_screen_6.dart';
import '../presentation/screens/logins/login_design_7/register_screen_7.dart';
import '../presentation/screens/logins/login_design_8/login_screen_8.dart';
import '../presentation/screens/logins/login_design_9/login_screen_9.dart';
import '../presentation/screens/logins/login_design_9/signup_screen_9.dart';
import '../presentation/screens/messages_notifications/messages_screen.dart';
import '../presentation/screens/messages_notifications/notifications_screen.dart';
import '../presentation/screens/onboarding/onboarding_screen_1.dart';
import '../presentation/screens/onboarding/onboarding_screen_2.dart';
import '../presentation/screens/onboarding/onboarding_screen_3.dart';
import '../presentation/screens/onboarding/onboarding_screen_4.dart';
import '../presentation/screens/onboarding/onboarding_screen_5.dart';
import '../presentation/screens/onboarding/onboarding_screen_6.dart';
import '../presentation/screens/profile/profile_1.dart';
import '../presentation/screens/profile/profile_2.dart';
import '../presentation/screens/profile/profile_3.dart';
import '../presentation/screens/profile/profile_4.dart';

class Routes {
  static const String rootScreen = '/';
  static const String profile1Screen = '/profile1-screen';
  static const String profile2Screen = '/profile2-screen';
  static const String profile3Screen = '/profile3-screen';
  static const String profile4Screen = '/profile4-screen';
  static const String timeLine = '/time-line';
  static const String activityScreen = '/activity-screen';
  static const String activityScreen2 = '/activity-screen2';
  static const String activityScreen3 = '/activity-screen3';
  static const String messagesScreen = '/messages-screen';
  static const String notificationsScreen = '/notifications-screen';
  static const String loginScreen1 = '/login-screen1';
  static const String signUpScreen1 = '/sign-up-screen1';
  static const String loginScreen2 = '/login-screen2';
  static const String signUpScreen2 = '/sign-up-screen2';
  static const String loginScreen3 = '/login-screen3';
  static const String signUpScreen3 = '/sign-up-screen3';
  static const String loginScreen4 = '/login-screen4';
  static const String signUp4 = '/sign-up4';
  static const String signUpScreen4 = '/sign-up-screen4';
  static const String loginScreen5 = '/login-screen5';
  static const String signUpScreen5 = '/sign-up-screen5';
  static const String loginScreen6 = '/login-screen6';
  static const String signUpScreen6 = '/sign-up-screen6';
  static const String registerScreen7 = '/register-screen7';
  static const String loginScreen8 = '/login-screen8';
  static const String loginScreen9 = '/login-screen9';
  static const String signUpScreen9 = '/sign-up-screen9';
  static const String alertDialog1 = '/alert-dialog1';
  static const String alertDialog2 = '/alert-dialog2';
  static const String alertDialog3 = '/alert-dialog3';
  static const String alertDialog4 = '/alert-dialog4';
  static const String bottomSheet1 = '/bottom-sheet1';
  static const String bottomSheet2 = '/bottom-sheet2';
  static const String bottomSheet3 = '/bottom-sheet3';
  static const String bottomSheet4 = '/bottom-sheet4';
  static const String onBoardingScreen1 = '/on-boarding-screen1';
  static const String onBoardingScreen2 = '/on-boarding-screen2';
  static const String onBoardingScreen3 = '/on-boarding-screen3';
  static const String onBoardingScreen4 = '/on-boarding-screen4';
  static const String onBoardingScreen5 = '/on-boarding-screen5';
  static const String onBoardingScreen6 = '/on-boarding-screen6';
  static const all = <String>{
    rootScreen,
    profile1Screen,
    profile2Screen,
    profile3Screen,
    profile4Screen,
    timeLine,
    activityScreen,
    activityScreen2,
    activityScreen3,
    messagesScreen,
    notificationsScreen,
    loginScreen1,
    signUpScreen1,
    loginScreen2,
    signUpScreen2,
    loginScreen3,
    signUpScreen3,
    loginScreen4,
    signUp4,
    signUpScreen4,
    loginScreen5,
    signUpScreen5,
    loginScreen6,
    signUpScreen6,
    registerScreen7,
    loginScreen8,
    loginScreen9,
    signUpScreen9,
    alertDialog1,
    alertDialog2,
    alertDialog3,
    alertDialog4,
    bottomSheet1,
    bottomSheet2,
    bottomSheet3,
    bottomSheet4,
    onBoardingScreen1,
    onBoardingScreen2,
    onBoardingScreen3,
    onBoardingScreen4,
    onBoardingScreen5,
    onBoardingScreen6,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.rootScreen, page: RootScreen),
    RouteDef(Routes.profile1Screen, page: Profile1Screen),
    RouteDef(Routes.profile2Screen, page: Profile2Screen),
    RouteDef(Routes.profile3Screen, page: Profile3Screen),
    RouteDef(Routes.profile4Screen, page: Profile4Screen),
    RouteDef(Routes.timeLine, page: TimeLine),
    RouteDef(Routes.activityScreen, page: ActivityScreen),
    RouteDef(Routes.activityScreen2, page: ActivityScreen2),
    RouteDef(Routes.activityScreen3, page: ActivityScreen3),
    RouteDef(Routes.messagesScreen, page: MessagesScreen),
    RouteDef(Routes.notificationsScreen, page: NotificationsScreen),
    RouteDef(Routes.loginScreen1, page: LoginScreen1),
    RouteDef(Routes.signUpScreen1, page: SignUpScreen1),
    RouteDef(Routes.loginScreen2, page: LoginScreen2),
    RouteDef(Routes.signUpScreen2, page: SignUpScreen2),
    RouteDef(Routes.loginScreen3, page: LoginScreen3),
    RouteDef(Routes.signUpScreen3, page: SignUpScreen3),
    RouteDef(Routes.loginScreen4, page: LoginScreen4),
    RouteDef(Routes.signUp4, page: SignUp4),
    RouteDef(Routes.signUpScreen4, page: SignUpScreen4),
    RouteDef(Routes.loginScreen5, page: LoginScreen5),
    RouteDef(Routes.signUpScreen5, page: SignUpScreen5),
    RouteDef(Routes.loginScreen6, page: LoginScreen6),
    RouteDef(Routes.signUpScreen6, page: SignUpScreen6),
    RouteDef(Routes.registerScreen7, page: RegisterScreen7),
    RouteDef(Routes.loginScreen8, page: LoginScreen8),
    RouteDef(Routes.loginScreen9, page: LoginScreen9),
    RouteDef(Routes.signUpScreen9, page: SignUpScreen9),
    RouteDef(Routes.alertDialog1, page: AlertDialog1),
    RouteDef(Routes.alertDialog2, page: AlertDialog2),
    RouteDef(Routes.alertDialog3, page: AlertDialog3),
    RouteDef(Routes.alertDialog4, page: AlertDialog4),
    RouteDef(Routes.bottomSheet1, page: BottomSheet1),
    RouteDef(Routes.bottomSheet2, page: BottomSheet2),
    RouteDef(Routes.bottomSheet3, page: BottomSheet3),
    RouteDef(Routes.bottomSheet4, page: BottomSheet4),
    RouteDef(Routes.onBoardingScreen1, page: OnBoardingScreen1),
    RouteDef(Routes.onBoardingScreen2, page: OnBoardingScreen2),
    RouteDef(Routes.onBoardingScreen3, page: OnBoardingScreen3),
    RouteDef(Routes.onBoardingScreen4, page: OnBoardingScreen4),
    RouteDef(Routes.onBoardingScreen5, page: OnBoardingScreen5),
    RouteDef(Routes.onBoardingScreen6, page: OnBoardingScreen6),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    RootScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RootScreen(),
        settings: data,
      );
    },
    Profile1Screen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Profile1Screen(),
        settings: data,
      );
    },
    Profile2Screen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Profile2Screen(),
        settings: data,
      );
    },
    Profile3Screen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Profile3Screen(),
        settings: data,
      );
    },
    Profile4Screen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Profile4Screen(),
        settings: data,
      );
    },
    TimeLine: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TimeLine(),
        settings: data,
      );
    },
    ActivityScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ActivityScreen(),
        settings: data,
      );
    },
    ActivityScreen2: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ActivityScreen2(),
        settings: data,
      );
    },
    ActivityScreen3: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ActivityScreen3(),
        settings: data,
      );
    },
    MessagesScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MessagesScreen(),
        settings: data,
      );
    },
    NotificationsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NotificationsScreen(),
        settings: data,
      );
    },
    LoginScreen1: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen1(),
        settings: data,
      );
    },
    SignUpScreen1: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen1(),
        settings: data,
      );
    },
    LoginScreen2: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen2(),
        settings: data,
      );
    },
    SignUpScreen2: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen2(),
        settings: data,
      );
    },
    LoginScreen3: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen3(),
        settings: data,
      );
    },
    SignUpScreen3: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen3(),
        settings: data,
      );
    },
    LoginScreen4: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen4(),
        settings: data,
      );
    },
    SignUp4: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUp4(),
        settings: data,
      );
    },
    SignUpScreen4: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen4(),
        settings: data,
      );
    },
    LoginScreen5: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen5(),
        settings: data,
      );
    },
    SignUpScreen5: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen5(),
        settings: data,
      );
    },
    LoginScreen6: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen6(),
        settings: data,
      );
    },
    SignUpScreen6: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen6(),
        settings: data,
      );
    },
    RegisterScreen7: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterScreen7(),
        settings: data,
      );
    },
    LoginScreen8: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen8(),
        settings: data,
      );
    },
    LoginScreen9: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen9(),
        settings: data,
      );
    },
    SignUpScreen9: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen9(),
        settings: data,
      );
    },
    AlertDialog1: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AlertDialog1(),
        settings: data,
      );
    },
    AlertDialog2: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AlertDialog2(),
        settings: data,
      );
    },
    AlertDialog3: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AlertDialog3(),
        settings: data,
      );
    },
    AlertDialog4: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AlertDialog4(),
        settings: data,
      );
    },
    BottomSheet1: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomSheet1(),
        settings: data,
      );
    },
    BottomSheet2: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomSheet2(),
        settings: data,
      );
    },
    BottomSheet3: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomSheet3(),
        settings: data,
      );
    },
    BottomSheet4: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomSheet4(),
        settings: data,
      );
    },
    OnBoardingScreen1: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingScreen1(),
        settings: data,
      );
    },
    OnBoardingScreen2: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingScreen2(),
        settings: data,
      );
    },
    OnBoardingScreen3: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingScreen3(),
        settings: data,
      );
    },
    OnBoardingScreen4: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingScreen4(),
        settings: data,
      );
    },
    OnBoardingScreen5: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingScreen5(),
        settings: data,
      );
    },
    OnBoardingScreen6: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingScreen6(),
        settings: data,
      );
    },
  };
}
