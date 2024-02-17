import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsible_kid/constants/app_colors.dart';
import 'package:responsible_kid/constants/app_strings.dart';
import 'package:responsible_kid/controllers/ak/ak_home_controller.dart';
import 'package:responsible_kid/views/widgets/gap_widget.dart';

class AKHomeScreen extends GetWidget<AKHomeController> {
  const AKHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200.sp,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.sp),
                              child: Text(
                                AppStrings.hiKidText,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 25.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.sp),
                              child: Text(
                                AppStrings.maleText + AppStrings.spaceSign + AppStrings.spaceSign + AppStrings.orSign + AppStrings.spaceSign + AppStrings.spaceSign + AppStrings.ageText + AppStrings.spaceSign + AppStrings.number1,
                                style: TextStyle(
                                  color: AppColors.lightBlue,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                            GapWidget(2.sp),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.sp),
                              child: Container(
                                height: 20.sp,
                                width: 75.sp,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(5.sp),
                                ),
                                child: const Text(
                                  AppStrings.dummyIdText,
                                  style: TextStyle(
                                    color: AppColors.darkBlue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.sp),
                          child: CircleAvatar(
                            backgroundColor: AppColors.white,
                            backgroundImage: const AssetImage(AppStrings.avatarAsset),
                            radius: 30.sp,
                          ),
                        ),
                      ],
                    ),
                    GapWidget(10.sp),
                    Container(
                      height: 675.sp,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20.sp),
                        ),
                      ),
                      child: ListView(
                        physics: const ClampingScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.sp,
                          vertical: 5.sp,
                        ),
                        children: [
                          GapWidget(10.sp),
                          GridView.builder(
                            itemCount: controller.homeItemsDate.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 110.sp,
                              crossAxisSpacing: 10.sp,
                              mainAxisSpacing: 10.sp,
                            ),
                            itemBuilder: (itemBuilder, index) {
                              return InkWell(
                                onTap: () {
                                  controller.homeItemsDate[index][AppStrings.titleText] != AppStrings.chatText
                                      ? Get.toNamed(
                                          AppStrings.nKHomeItemDetailsRout,
                                          arguments: controller.homeItemsDate[index],
                                        )
                                      : Get.toNamed(AppStrings.aKChatRout);
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10.sp,
                                    horizontal: 20.sp,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.darkBlue,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        controller.homeItemsDate[index][AppStrings.imageText],
                                        height: 40.sp,
                                      ),
                                      Text(
                                        controller.homeItemsDate[index][AppStrings.titleText],
                                        style: TextStyle(
                                          color: AppColors.darkBlue,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
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
