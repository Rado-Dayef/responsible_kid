import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:responsible_kid/constants/app_colors.dart';
import 'package:responsible_kid/constants/app_strings.dart';
import 'package:responsible_kid/controllers/splash_controller.dart';
import 'package:responsible_kid/views/widgets/gap_widget.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 2.sp,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15.sp),
          ),
        ),
        child: Center(
          child: SizedBox(
            height: 690.h,
            width: 360.w,
            child: Center(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () {
                        return Lottie.asset(
                          AppStrings.splashAsset,
                          animate: controller.animate.value,
                        );
                      },
                    ),
                    Text(
                      AppStrings.appTitle,
                      style: TextStyle(
                        fontSize: 50.sp,
                        color: AppColors.darkBlue,
                        fontFamily: AppStrings.timesFont,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    GapWidget(10.sp),
                    Text(
                      AppStrings.appSubTitle,
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors.darkBlue,
                        fontFamily: AppStrings.eloraFont,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
