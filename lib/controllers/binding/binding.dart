import 'package:get/get.dart';
import 'package:responsible_kid/controllers/ak/ak_home_controller.dart';
import 'package:responsible_kid/controllers/auth/signin_controller.dart';
import 'package:responsible_kid/controllers/auth/signup_controller.dart';
import 'package:responsible_kid/controllers/nk/nk_daily_to_do_controller.dart';
import 'package:responsible_kid/controllers/nk/nk_daily_to_do_item_details_controller.dart';
import 'package:responsible_kid/controllers/nk/nk_home_controller.dart';
import 'package:responsible_kid/controllers/nk/nk_home_item_details_controller.dart';
import 'package:responsible_kid/controllers/splash_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SplashController(),
      fenix: true,
    );
    Get.lazyPut(
      () => SignInController(),
      fenix: true,
    );
    Get.lazyPut(
      () => SignUpController(),
      fenix: true,
    );
    Get.lazyPut(
      () => NKHomeController(),
      fenix: true,
    );
    Get.lazyPut(
      () => AKHomeController(),
      fenix: true,
    );
    Get.lazyPut(
      () => NKDailyToDoController(),
      fenix: true,
    );
    Get.lazyPut(
      () => NKHomeItemDetailsController(),
      fenix: true,
    );
    Get.lazyPut(
      () => NKDailyToDoItemDetailsController(),
      fenix: true,
    );
  }
}
