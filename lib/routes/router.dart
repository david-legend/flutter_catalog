
import 'package:auto_route/auto_route.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/screens/auth_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/screens/categories_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/screens/category_item_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/screens/check_out_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/screens/home_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/screens/interest_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/screens/product_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/screens/profile_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/screens/splash_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/screens/verification_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/add_collaborators.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/discover_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/follow_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/home_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/login_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/onBoarding_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/place_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/plan_trip_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/profile_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/root_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/saved_places_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/select_interest_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/signup_screen.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/screens/splash_screen.dart';
import 'package:fluttercatalog/presentation/catalog/screens/activities/activity_screen.dart';
import 'package:fluttercatalog/presentation/catalog/screens/activities/activity_screen_2.dart';
import 'package:fluttercatalog/presentation/catalog/screens/activities/activity_screen_3.dart';
import 'package:fluttercatalog/presentation/catalog/screens/activities/timeline.dart';
import 'package:fluttercatalog/presentation/catalog/screens/alert_dialogs/alert_dialog_1.dart';
import 'package:fluttercatalog/presentation/catalog/screens/alert_dialogs/alert_dialog_2.dart';
import 'package:fluttercatalog/presentation/catalog/screens/alert_dialogs/alert_dialog_3.dart';
import 'package:fluttercatalog/presentation/catalog/screens/alert_dialogs/alert_dialog_4.dart';
import 'package:fluttercatalog/presentation/catalog/screens/alert_dialogs/bottom_sheet_1.dart';
import 'package:fluttercatalog/presentation/catalog/screens/alert_dialogs/bottom_sheet_2.dart';
import 'package:fluttercatalog/presentation/catalog/screens/alert_dialogs/bottom_sheet_3.dart';
import 'package:fluttercatalog/presentation/catalog/screens/alert_dialogs/bottom_sheet_4.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_1/login_screen_1.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_1/signup_screen_1.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_2/login_screen_2.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_2/signup_screen_2.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_3/login_screen_3.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_3/signup_screen_3.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_4/login_screen_4.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_4/signup_4.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_4/signup_screen_4.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_5/login_screen_5.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_5/signup_screen_5.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_6/login_screen_6.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_6/signup_screen_6.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_7/register_screen_7.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_8/login_screen_8.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_9/login_screen_9.dart';
import 'package:fluttercatalog/presentation/catalog/screens/logins/login_design_9/signup_screen_9.dart';
import 'package:fluttercatalog/presentation/catalog/screens/menus/menu_1.dart';
import 'package:fluttercatalog/presentation/catalog/screens/menus/menu_2.dart';
import 'package:fluttercatalog/presentation/catalog/screens/menus/menu_3.dart';
import 'package:fluttercatalog/presentation/catalog/screens/menus/menu_4.dart';
import 'package:fluttercatalog/presentation/catalog/screens/messages_notifications/messages_screen.dart';
import 'package:fluttercatalog/presentation/catalog/screens/messages_notifications/notifications_screen.dart';
import 'package:fluttercatalog/presentation/catalog/screens/onboarding/onboarding_screen_1.dart';
import 'package:fluttercatalog/presentation/catalog/screens/onboarding/onboarding_screen_2.dart';
import 'package:fluttercatalog/presentation/catalog/screens/onboarding/onboarding_screen_3.dart';
import 'package:fluttercatalog/presentation/catalog/screens/onboarding/onboarding_screen_4.dart';
import 'package:fluttercatalog/presentation/catalog/screens/onboarding/onboarding_screen_5.dart';
import 'package:fluttercatalog/presentation/catalog/screens/onboarding/onboarding_screen_6.dart';
import 'package:fluttercatalog/presentation/catalog/screens/onboarding/onboarding_screen_7.dart';
import 'package:fluttercatalog/presentation/catalog/screens/profile/profile_1.dart';
import 'package:fluttercatalog/presentation/catalog/screens/profile/profile_2.dart';
import 'package:fluttercatalog/presentation/catalog/screens/profile/profile_3.dart';
import 'package:fluttercatalog/presentation/catalog/screens/profile/profile_4.dart';
import 'package:fluttercatalog/presentation/dev/other_projects.dart';
import 'package:fluttercatalog/presentation/root_screen.dart';

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
    MaterialRoute(page: OnBoardingScreen3),
    MaterialRoute(page: OnBoardingScreen4),
    MaterialRoute(page: OnBoardingScreen5),
    MaterialRoute(page: OnBoardingScreen6),
    MaterialRoute(page: OnBoardingScreen7),

    //Menu Screens
    MaterialRoute(page: MenuScreen1),
    MaterialRoute(page: MenuScreen2),
    MaterialRoute(page: MenuScreen3),
    MaterialRoute(page: MenuScreen4),

    //Projects Screen
    MaterialRoute(page: OtherProjectsScreen),

    /****************************** Drop Routes ******************************/
    //Drop Routes
    // initial route is named "/"
    CupertinoRoute(page: DropSplashScreen),

    //OnBoarding and AuthenticationScreens
    CupertinoRoute(page: AuthScreen),
    CupertinoRoute(page: VerificationScreen),
    CupertinoRoute(page: InterestScreen),

    //Inside App
    CupertinoRoute(page: HomeScreen),
    CupertinoRoute(page: CategoriesScreen),
    CupertinoRoute(page: CategoryItemScreen),
    CupertinoRoute(page: ProductScreen),
    CupertinoRoute(page: ProfileScreen),
    CupertinoRoute(page: CheckOutScreen),

    /****************************** Drop Routes ******************************/
    // initial route is named "/"
    MaterialRoute(page: RoamSplashScreen),

    //OnBoarding and AuthenticationScreens
    MaterialRoute(page: OnBoardingScreen),
    MaterialRoute(page: LoginScreen),
    MaterialRoute(page: SignUpScreen),
    MaterialRoute(page: SelectInterestScreen),
    MaterialRoute(page: FollowScreen),

    //Inside App
    MaterialRoute(page: RoamRootScreen),
    MaterialRoute(page: RoamHomeScreen),
    MaterialRoute(page: DiscoverScreen),
    MaterialRoute(page: SavedPlacesScreen),
    MaterialRoute(page: RoamProfileScreen),
    MaterialRoute(page: PlanTripScreen),
    MaterialRoute(page: PlaceScreen),
    MaterialRoute(page: AddCollaboratorsScreen),
  ],
)
class $AppRouter {}

class CategoryItemDemoArguments {}
