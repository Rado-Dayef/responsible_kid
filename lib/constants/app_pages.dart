import 'package:get/get.dart';
import 'package:responsible_kid/constants/app_strings.dart';
import 'package:responsible_kid/controllers/ak/ak_chat_screen.dart';
import 'package:responsible_kid/views/screens/ak/ak_home_screen.dart';
import 'package:responsible_kid/views/screens/auth/signin_screen.dart';
import 'package:responsible_kid/views/screens/auth/signup_screen.dart';
import 'package:responsible_kid/views/screens/nk/nk_daily_to_do_item_details_screen.dart';
import 'package:responsible_kid/views/screens/nk/nk_daily_to_do_screen.dart';
import 'package:responsible_kid/views/screens/nk/nk_home_item_details.dart';
import 'package:responsible_kid/views/screens/nk/nk_home_screen.dart';
import 'package:responsible_kid/views/screens/splash_screen.dart';

class AppPages {
  static List<GetPage> appPages = [
    GetPage(
      name: AppStrings.aKChatRout,
      page: () => const AkChatScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: AppStrings.aKHomeRout,
      page: () => const AKHomeScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: AppStrings.nKHomeRout,
      page: () => const NKHomeScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: AppStrings.splashRout,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: AppStrings.loginRout,
      page: () => const SignInScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: AppStrings.signupRout,
      page: () => const SignupScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: AppStrings.nKHomeItemDetailsRout,
      page: () => const NKHomeItemDetailsScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: AppStrings.nKDailyToDoItemDetailsRout,
      page: () => const NKDailyToDoItemDetailsScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
    GetPage(
      name: AppStrings.nKDailyToDoRout,
      page: () => const NKDailyToDoScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
    ),
  ];
}
