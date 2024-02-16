import 'package:get/get.dart';
import 'package:responsible_kid/controllers/auth/login_controller.dart';
import 'package:responsible_kid/controllers/splash_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SplashController(),
      fenix: true,
    );
    Get.lazyPut(
      () => LoginController(),
      fenix: true,
    );
  }
}
