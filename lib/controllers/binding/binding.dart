import 'package:get/get.dart';
import 'package:responsible_kid/controllers/auth/signin_controller.dart';
import 'package:responsible_kid/controllers/auth/signup_controller.dart';
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
  }
}
