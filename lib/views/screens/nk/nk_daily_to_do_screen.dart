import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsible_kid/constants/app_colors.dart';
import 'package:responsible_kid/constants/app_strings.dart';
import 'package:responsible_kid/controllers/nk/nk_daily_to_do_controller.dart';
import 'package:responsible_kid/views/widgets/gap_widget.dart';

class NKDailyToDoScreen extends GetWidget<NKDailyToDoController> {
  const NKDailyToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100.sp,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.darkBlue,
                  AppColors.lightBlue,
                ],
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.sp),
              ),
              child: Image.asset(
                AppStrings.homeBGAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              height: 690.h,
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.sp),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: AppColors.white,
                            ),
                          ),
                          GapWidget(15.sp),
                          Text(
                            AppStrings.dailyToDoText,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 20.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                    GapWidget(10.sp),
                    Container(
                      height: 800.sp,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20.sp),
                        ),
                      ),
                      child: ListView.separated(
                        padding: EdgeInsets.all(10.sp),
                        itemCount: controller.dailyToDoItemsDate.length,
                        itemBuilder: (itemBuilder, index) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(
                                AppStrings.nKDailyToDoItemDetailsRout,
                                arguments: controller.dailyToDoItemsDate[index],
                              );
                            },
                            child: Container(
                              height: 75.sp,
                              padding: EdgeInsets.symmetric(horizontal: 10.sp),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.sp),
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    AppColors.darkBlue,
                                    AppColors.lightBlue,
                                  ],
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: AppColors.white,
                                    radius: 25.sp,
                                    child: SizedBox(
                                      height: 30.sp,
                                      width: 30.sp,
                                      child: Image.asset(
                                        controller.dailyToDoItemsDate[index][AppStrings.imageText],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    controller.dailyToDoItemsDate[index][AppStrings.titleText],
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                  Switch(
                                    activeColor: Colors.white,
                                    activeTrackColor: AppColors.darkBlue,
                                    inactiveThumbColor: AppColors.darkBlue,
                                    inactiveTrackColor: Colors.white,
                                    splashRadius: 0,
                                    trackOutlineWidth: const MaterialStatePropertyAll(0),
                                    value: controller.dailyToDoItemsDate[index][AppStrings.isDoneText],
                                    onChanged: (value) {},
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return GapWidget(10.sp);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
