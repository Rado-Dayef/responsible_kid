import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsible_kid/constants/app_defaults.dart';
import 'package:responsible_kid/constants/app_strings.dart';

class SplashController extends GetxController {
  RxBool animate = RxBool(true);

  @override
  void onInit() {
    splash();
    super.onInit();
  }

  void splash() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        checkConnectionAndNavigate();
      },
    );
  }

  void checkConnectionAndNavigate() async {
    if (await checkConnection()) {
      Get.offAllNamed(AppStrings.nKHomeRout);
    } else {
      Future.delayed(
        const Duration(seconds: 6),
        () {
          checkConnectionAndNavigate();
          AppDefaults.defaultToast(AppStrings.connectionErrorToast);
        },
      );
    }
  }

  Future<bool> checkConnection() async {
    var connection = await InternetConnectionChecker().hasConnection;
    bool isConnected = false;
    connection ? isConnected = true : isConnected = false;
    return isConnected;
  }
}
