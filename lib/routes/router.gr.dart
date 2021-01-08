// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bloc/theme_bloc.dart';
import '../presentation/case_studies/drop/screens/auth_screen.dart';
import '../presentation/case_studies/drop/screens/categories_screen.dart';
import '../presentation/case_studies/drop/screens/category_item_screen.dart';
import '../presentation/case_studies/drop/screens/check_out_screen.dart';
import '../presentation/case_studies/drop/screens/home_screen.dart';
import '../presentation/case_studies/drop/screens/interest_screen.dart';
import '../presentation/case_studies/drop/screens/product_screen.dart';
import '../presentation/case_studies/drop/screens/profile_screen.dart';
import '../presentation/case_studies/drop/screens/splash_screen.dart';
import '../presentation/case_studies/drop/screens/verification_screen.dart';
import '../presentation/case_studies/drop/widgets/product_card.dart';
import '../presentation/case_studies/roam/screens/add_collaborators.dart';
import '../presentation/case_studies/roam/screens/discover_screen.dart';
import '../presentation/case_studies/roam/screens/follow_screen.dart';
import '../presentation/case_studies/roam/screens/home_screen.dart';
import '../presentation/case_studies/roam/screens/login_screen.dart';
import '../presentation/case_studies/roam/screens/onBoarding_screen.dart';
import '../presentation/case_studies/roam/screens/place_screen.dart';
import '../presentation/case_studies/roam/screens/plan_trip_screen.dart';
import '../presentation/case_studies/roam/screens/profile_screen.dart';
import '../presentation/case_studies/roam/screens/root_screen.dart';
import '../presentation/case_studies/roam/screens/saved_places_screen.dart';
import '../presentation/case_studies/roam/screens/select_interest_screen.dart';
import '../presentation/case_studies/roam/screens/signup_screen.dart';
import '../presentation/case_studies/roam/screens/splash_screen.dart';
import '../presentation/catalog/screens/activities/activity_screen.dart';
import '../presentation/catalog/screens/activities/activity_screen_2.dart';
import '../presentation/catalog/screens/activities/activity_screen_3.dart';
import '../presentation/catalog/screens/activities/timeline.dart';
import '../presentation/catalog/screens/alert_dialogs/alert_dialog_1.dart';
import '../presentation/catalog/screens/alert_dialogs/alert_dialog_2.dart';
import '../presentation/catalog/screens/alert_dialogs/alert_dialog_3.dart';
import '../presentation/catalog/screens/alert_dialogs/alert_dialog_4.dart';
import '../presentation/catalog/screens/alert_dialogs/bottom_sheet_1.dart';
import '../presentation/catalog/screens/alert_dialogs/bottom_sheet_2.dart';
import '../presentation/catalog/screens/alert_dialogs/bottom_sheet_3.dart';
import '../presentation/catalog/screens/alert_dialogs/bottom_sheet_4.dart';
import '../presentation/catalog/screens/logins/login_design_1/login_screen_1.dart';
import '../presentation/catalog/screens/logins/login_design_1/signup_screen_1.dart';
import '../presentation/catalog/screens/logins/login_design_2/login_screen_2.dart';
import '../presentation/catalog/screens/logins/login_design_2/signup_screen_2.dart';
import '../presentation/catalog/screens/logins/login_design_3/login_screen_3.dart';
import '../presentation/catalog/screens/logins/login_design_3/signup_screen_3.dart';
import '../presentation/catalog/screens/logins/login_design_4/login_screen_4.dart';
import '../presentation/catalog/screens/logins/login_design_4/signup_4.dart';
import '../presentation/catalog/screens/logins/login_design_4/signup_screen_4.dart';
import '../presentation/catalog/screens/logins/login_design_5/login_screen_5.dart';
import '../presentation/catalog/screens/logins/login_design_5/signup_screen_5.dart';
import '../presentation/catalog/screens/logins/login_design_6/login_screen_6.dart';
import '../presentation/catalog/screens/logins/login_design_6/signup_screen_6.dart';
import '../presentation/catalog/screens/logins/login_design_7/register_screen_7.dart';
import '../presentation/catalog/screens/logins/login_design_8/login_screen_8.dart';
import '../presentation/catalog/screens/logins/login_design_9/login_screen_9.dart';
import '../presentation/catalog/screens/logins/login_design_9/signup_screen_9.dart';
import '../presentation/catalog/screens/menus/menu_1.dart';
import '../presentation/catalog/screens/menus/menu_2.dart';
import '../presentation/catalog/screens/menus/menu_3.dart';
import '../presentation/catalog/screens/menus/menu_4.dart';
import '../presentation/catalog/screens/messages_notifications/messages_screen.dart';
import '../presentation/catalog/screens/messages_notifications/notifications_screen.dart';
import '../presentation/catalog/screens/onboarding/onboarding_screen_1.dart';
import '../presentation/catalog/screens/onboarding/onboarding_screen_2.dart';
import '../presentation/catalog/screens/onboarding/onboarding_screen_3.dart';
import '../presentation/catalog/screens/onboarding/onboarding_screen_4.dart';
import '../presentation/catalog/screens/onboarding/onboarding_screen_5.dart';
import '../presentation/catalog/screens/onboarding/onboarding_screen_6.dart';
import '../presentation/catalog/screens/onboarding/onboarding_screen_7.dart';
import '../presentation/catalog/screens/profile/profile_1.dart';
import '../presentation/catalog/screens/profile/profile_2.dart';
import '../presentation/catalog/screens/profile/profile_3.dart';
import '../presentation/catalog/screens/profile/profile_4.dart';
import '../presentation/dev/other_projects.dart';
import '../presentation/root_screen.dart';

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
  static const String onBoardingScreen7 = '/on-boarding-screen7';
  static const String menuScreen1 = '/menu-screen1';
  static const String menuScreen2 = '/menu-screen2';
  static const String menuScreen3 = '/menu-screen3';
  static const String menuScreen4 = '/menu-screen4';
  static const String otherProjectsScreen = '/other-projects-screen';
  static const String dropSplashScreen = '/drop-splash-screen';
  static const String authScreen = '/auth-screen';
  static const String verificationScreen = '/verification-screen';
  static const String interestScreen = '/interest-screen';
  static const String homeScreen = '/home-screen';
  static const String categoriesScreen = '/categories-screen';
  static const String categoryItemScreen = '/category-item-screen';
  static const String productScreen = '/product-screen';
  static const String profileScreen = '/profile-screen';
  static const String checkOutScreen = '/check-out-screen';
  static const String roamSplashScreen = '/roam-splash-screen';
  static const String onBoardingScreen = '/on-boarding-screen';
  static const String loginScreen = '/login-screen';
  static const String signUpScreen = '/sign-up-screen';
  static const String selectInterestScreen = '/select-interest-screen';
  static const String followScreen = '/follow-screen';
  static const String roamRootScreen = '/roam-root-screen';
  static const String roamHomeScreen = '/roam-home-screen';
  static const String discoverScreen = '/discover-screen';
  static const String savedPlacesScreen = '/saved-places-screen';
  static const String roamProfileScreen = '/roam-profile-screen';
  static const String planTripScreen = '/plan-trip-screen';
  static const String placeScreen = '/place-screen';
  static const String addCollaboratorsScreen = '/add-collaborators-screen';
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
    onBoardingScreen7,
    menuScreen1,
    menuScreen2,
    menuScreen3,
    menuScreen4,
    otherProjectsScreen,
    dropSplashScreen,
    authScreen,
    verificationScreen,
    interestScreen,
    homeScreen,
    categoriesScreen,
    categoryItemScreen,
    productScreen,
    profileScreen,
    checkOutScreen,
    roamSplashScreen,
    onBoardingScreen,
    loginScreen,
    signUpScreen,
    selectInterestScreen,
    followScreen,
    roamRootScreen,
    roamHomeScreen,
    discoverScreen,
    savedPlacesScreen,
    roamProfileScreen,
    planTripScreen,
    placeScreen,
    addCollaboratorsScreen,
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
    RouteDef(Routes.onBoardingScreen7, page: OnBoardingScreen7),
    RouteDef(Routes.menuScreen1, page: MenuScreen1),
    RouteDef(Routes.menuScreen2, page: MenuScreen2),
    RouteDef(Routes.menuScreen3, page: MenuScreen3),
    RouteDef(Routes.menuScreen4, page: MenuScreen4),
    RouteDef(Routes.otherProjectsScreen, page: OtherProjectsScreen),
    RouteDef(Routes.dropSplashScreen, page: DropSplashScreen),
    RouteDef(Routes.authScreen, page: AuthScreen),
    RouteDef(Routes.verificationScreen, page: VerificationScreen),
    RouteDef(Routes.interestScreen, page: InterestScreen),
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.categoriesScreen, page: CategoriesScreen),
    RouteDef(Routes.categoryItemScreen, page: CategoryItemScreen),
    RouteDef(Routes.productScreen, page: ProductScreen),
    RouteDef(Routes.profileScreen, page: ProfileScreen),
    RouteDef(Routes.checkOutScreen, page: CheckOutScreen),
    RouteDef(Routes.roamSplashScreen, page: RoamSplashScreen),
    RouteDef(Routes.onBoardingScreen, page: OnBoardingScreen),
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.signUpScreen, page: SignUpScreen),
    RouteDef(Routes.selectInterestScreen, page: SelectInterestScreen),
    RouteDef(Routes.followScreen, page: FollowScreen),
    RouteDef(Routes.roamRootScreen, page: RoamRootScreen),
    RouteDef(Routes.roamHomeScreen, page: RoamHomeScreen),
    RouteDef(Routes.discoverScreen, page: DiscoverScreen),
    RouteDef(Routes.savedPlacesScreen, page: SavedPlacesScreen),
    RouteDef(Routes.roamProfileScreen, page: RoamProfileScreen),
    RouteDef(Routes.planTripScreen, page: PlanTripScreen),
    RouteDef(Routes.placeScreen, page: PlaceScreen),
    RouteDef(Routes.addCollaboratorsScreen, page: AddCollaboratorsScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    RootScreen: (data) {
      final args = data.getArgs<RootScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => RootScreen(themeBloc: args.themeBloc),
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
    OnBoardingScreen7: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingScreen7(),
        settings: data,
      );
    },
    MenuScreen1: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MenuScreen1(),
        settings: data,
      );
    },
    MenuScreen2: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MenuScreen2(),
        settings: data,
      );
    },
    MenuScreen3: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MenuScreen3(),
        settings: data,
      );
    },
    MenuScreen4: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MenuScreen4(),
        settings: data,
      );
    },
    OtherProjectsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OtherProjectsScreen(),
        settings: data,
      );
    },
    DropSplashScreen: (data) {
      final args = data.getArgs<DropSplashScreenArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DropSplashScreen(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    AuthScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AuthScreen(),
        settings: data,
      );
    },
    VerificationScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => VerificationScreen(),
        settings: data,
      );
    },
    InterestScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => InterestScreen(),
        settings: data,
      );
    },
    HomeScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    CategoriesScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CategoriesScreen(),
        settings: data,
      );
    },
    CategoryItemScreen: (data) {
      final args = data.getArgs<CategoryItemScreenArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CategoryItemScreen(args.category),
        settings: data,
      );
    },
    ProductScreen: (data) {
      final args = data.getArgs<ProductScreenArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ProductScreen(args.product),
        settings: data,
      );
    },
    ProfileScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ProfileScreen(),
        settings: data,
      );
    },
    CheckOutScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CheckOutScreen(),
        settings: data,
      );
    },
    RoamSplashScreen: (data) {
      final args = data.getArgs<RoamSplashScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => RoamSplashScreen(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    OnBoardingScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingScreen(),
        settings: data,
      );
    },
    LoginScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen(),
        settings: data,
      );
    },
    SignUpScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen(),
        settings: data,
      );
    },
    SelectInterestScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SelectInterestScreen(),
        settings: data,
      );
    },
    FollowScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FollowScreen(),
        settings: data,
      );
    },
    RoamRootScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RoamRootScreen(),
        settings: data,
      );
    },
    RoamHomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RoamHomeScreen(),
        settings: data,
      );
    },
    DiscoverScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DiscoverScreen(),
        settings: data,
      );
    },
    SavedPlacesScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SavedPlacesScreen(),
        settings: data,
      );
    },
    RoamProfileScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RoamProfileScreen(),
        settings: data,
      );
    },
    PlanTripScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PlanTripScreen(),
        settings: data,
      );
    },
    PlaceScreen: (data) {
      final args = data.getArgs<PlaceScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => PlaceScreen(
          place: args.place,
          location: args.location,
          imagePath: args.imagePath,
          rating: args.rating,
        ),
        settings: data,
      );
    },
    AddCollaboratorsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AddCollaboratorsScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// RootScreen arguments holder class
class RootScreenArguments {
  final ThemeBloc themeBloc;
  RootScreenArguments({@required this.themeBloc});
}

/// DropSplashScreen arguments holder class
class DropSplashScreenArguments {
  final ThemeBloc themeBloc;
  DropSplashScreenArguments({@required this.themeBloc});
}

/// CategoryItemScreen arguments holder class
class CategoryItemScreenArguments {
  final String category;
  CategoryItemScreenArguments({@required this.category});
}

/// ProductScreen arguments holder class
class ProductScreenArguments {
  final ProductItem product;
  ProductScreenArguments({@required this.product});
}

/// RoamSplashScreen arguments holder class
class RoamSplashScreenArguments {
  final ThemeBloc themeBloc;
  RoamSplashScreenArguments({@required this.themeBloc});
}

/// PlaceScreen arguments holder class
class PlaceScreenArguments {
  final String place;
  final String location;
  final String imagePath;
  final double rating;
  PlaceScreenArguments(
      {@required this.place,
      @required this.location,
      @required this.imagePath,
      @required this.rating});
}
