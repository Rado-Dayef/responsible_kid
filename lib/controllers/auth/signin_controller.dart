import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsible_kid/constants/app_defaults.dart';
import 'package:responsible_kid/constants/app_strings.dart';

class SignInController extends GetxController {
  String? iD, password;
  RxBool obscure = RxBool(true);
  RxBool isLoading = RxBool(false);
  RxBool autisticKid = RxBool(false);
  RxBool animationStarted = RxBool(false);
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void obscureToggle() {
    obscure.value = !obscure.value;
  }

  void signInValidation() async {
    FocusManager.instance.primaryFocus?.unfocus();
    var formData = formKey.currentState;
    if (formData!.validate()) {
      formData.save();
      isLoading.value = true;
      var connection = await InternetConnectionChecker().hasConnection;
      if (connection == true) {
        animationStarted.value = true;
        autisticKid.value ? Get.offNamed(AppStrings.aKHomeRout) : Get.offNamed(AppStrings.nKHomeRout);
      } else {
        AppDefaults.defaultToast(AppStrings.connectionErrorToast);
        animationStarted.value = false;
        isLoading.value = false;
      }
    }
  }
}
