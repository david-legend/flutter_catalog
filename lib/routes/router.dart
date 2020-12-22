import 'package:auto_route/auto_route_annotations.dart';
import 'package:fluttercatalog/presentation/root_screen.dart';
import 'package:fluttercatalog/presentation/screens/activities/activity_screen.dart';
import 'package:fluttercatalog/presentation/screens/activities/activity_screen_2.dart';
import 'package:fluttercatalog/presentation/screens/activities/activity_screen_3.dart';
import 'package:fluttercatalog/presentation/screens/activities/timeline.dart';
import 'package:fluttercatalog/presentation/screens/alert_dialogs/alert_dialog_1.dart';
import 'package:fluttercatalog/presentation/screens/alert_dialogs/alert_dialog_2.dart';
import 'package:fluttercatalog/presentation/screens/alert_dialogs/alert_dialog_3.dart';
import 'package:fluttercatalog/presentation/screens/alert_dialogs/alert_dialog_4.dart';
import 'package:fluttercatalog/presentation/screens/alert_dialogs/bottom_sheet_1.dart';
import 'package:fluttercatalog/presentation/screens/alert_dialogs/bottom_sheet_2.dart';
import 'package:fluttercatalog/presentation/screens/alert_dialogs/bottom_sheet_3.dart';
import 'package:fluttercatalog/presentation/screens/alert_dialogs/bottom_sheet_4.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_1/login_screen_1.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_1/signup_screen_1.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_2/login_screen_2.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_2/signup_screen_2.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_3/login_screen_3.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_3/signup_screen_3.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_4/login_screen_4.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_4/signup_4.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_4/signup_screen_4.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_5/login_screen_5.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_5/signup_screen_5.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_6/login_screen_6.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_6/signup_screen_6.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_7/register_screen_7.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_8/login_screen_8.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_9/login_screen_9.dart';
import 'package:fluttercatalog/presentation/screens/logins/login_design_9/signup_screen_9.dart';
import 'package:fluttercatalog/presentation/screens/messages_notifications/messages_screen.dart';
import 'package:fluttercatalog/presentation/screens/messages_notifications/notifications_screen.dart';
import 'package:fluttercatalog/presentation/screens/onboarding/onboarding_screen_1.dart';
import 'package:fluttercatalog/presentation/screens/onboarding/onboarding_screen_2.dart';
import 'package:fluttercatalog/presentation/screens/profile/profile_1.dart';
import 'package:fluttercatalog/presentation/screens/profile/profile_2.dart';
import 'package:fluttercatalog/presentation/screens/profile/profile_3.dart';
import 'package:fluttercatalog/presentation/screens/profile/profile_4.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: RootScreen, initial: true),
    //Profile
    MaterialRoute(page: Profile1Screen),
    MaterialRoute(page: Profile2Screen),
    MaterialRoute(page: Profile3Screen),
    MaterialRoute(page: Profile4Screen),

    //Activities
    MaterialRoute(page: TimeLine),
    MaterialRoute(page: ActivityScreen),
    MaterialRoute(page: ActivityScreen2),
    MaterialRoute(page: ActivityScreen3),

    //Messages & Notifications
    MaterialRoute(page: MessagesScreen),
    MaterialRoute(page: NotificationsScreen),

    //Login Screens
    MaterialRoute(page: LoginScreen1),
    MaterialRoute(page: SignUpScreen1),
    MaterialRoute(page: LoginScreen2),
    MaterialRoute(page: SignUpScreen2),
    MaterialRoute(page: LoginScreen3),
    MaterialRoute(page: SignUpScreen3),
    MaterialRoute(page: LoginScreen4),
    MaterialRoute(page: SignUp4),
    MaterialRoute(page: SignUpScreen4),
    MaterialRoute(page: LoginScreen5),
    MaterialRoute(page: SignUpScreen5),
    MaterialRoute(page: LoginScreen6),
    MaterialRoute(page: SignUpScreen6),
    MaterialRoute(page: RegisterScreen7),
    MaterialRoute(page: LoginScreen8),
    MaterialRoute(page: LoginScreen9),
    MaterialRoute(page: SignUpScreen9),

    //Alert Dialogs & BottomSheets
    MaterialRoute(page: AlertDialog1),
    MaterialRoute(page: AlertDialog2),
    MaterialRoute(page: AlertDialog3),
    MaterialRoute(page: AlertDialog4),
    MaterialRoute(page: BottomSheet1),
    MaterialRoute(page: BottomSheet2),
    MaterialRoute(page: BottomSheet3),
    MaterialRoute(page: BottomSheet4),

    //OnBoarding Screens
    MaterialRoute(page: OnBoardingScreen1),
    MaterialRoute(page: OnBoardingScreen2),
  ],
)
class $AppRouter {}
