import 'package:get/get.dart';
import 'package:responsible_kid/constants/app_strings.dart';
import 'package:responsible_kid/views/screens/auth/signin_screen.dart';
import 'package:responsible_kid/views/screens/auth/signup_screen.dart';
import 'package:responsible_kid/views/screens/nk_daily_to_do.dart';
import 'package:responsible_kid/views/screens/nk_daily_to_do_details_screen.dart';
import 'package:responsible_kid/views/screens/nk_home_item_details.dart';
import 'package:responsible_kid/views/screens/nk_home_screen.dart';
import 'package:responsible_kid/views/screens/nk_profile_screen.dart';
import 'package:responsible_kid/views/screens/splash_screen.dart';

class AppPages {
  static List<GetPage> appPages = [
    GetPage(
      name: AppStrings.nKHomeRout,
      page: () => const NKHomeScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
    GetPage(
      name: AppStrings.splashRout,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
    GetPage(
      name: AppStrings.loginRout,
      page: () => const SignInScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
    GetPage(
      name: AppStrings.signupRout,
      page: () => const SignupScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
    GetPage(
      name: AppStrings.nKProfileRout,
      page: () => const NKProfileScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
    GetPage(
      name: AppStrings.nKHomeItemDetailsRout,
      page: () => const NKHomeItemDetailsScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
    GetPage(
      name: AppStrings.nKDailyToDoDetailsRout,
      page: () => const NKDailyToDoDetailsScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
    GetPage(
      name: AppStrings.nKDailyToDoRout,
      page: () => const NKDailyToDoScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 250,
      ),
    ),
  ];
}
