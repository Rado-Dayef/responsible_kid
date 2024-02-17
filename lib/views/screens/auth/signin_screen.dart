import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsible_kid/constants/app_colors.dart';
import 'package:responsible_kid/constants/app_strings.dart';
import 'package:responsible_kid/controllers/auth/signin_controller.dart';
import 'package:responsible_kid/views/widgets/form_field_widget.dart';
import 'package:responsible_kid/views/widgets/gap_widget.dart';

class SignInScreen extends GetWidget<SignInController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 350.sp,
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
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                AppStrings.authBGAsset,
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
                      padding: EdgeInsets.symmetric(horizontal: 10.sp),
                      child: Text(
                        AppStrings.hiKidText,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 35.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.sp),
                      child: Text(
                        AppStrings.signInToContinueText,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                    GapWidget(10.sp),
                    Container(
                      height: 550.sp,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20.sp),
                        ),
                      ),
                      child: Form(
                        key: controller.formKey,
                        child: SingleChildScrollView(
                          physics: const ClampingScrollPhysics(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GapWidget(25.sp),
                              Hero(
                                tag: AppStrings.logoHero,
                                child: CircleAvatar(
                                  backgroundColor: AppColors.darkBlue,
                                  radius: 50.sp,
                                  child: Text(
                                    AppStrings.appTitle,
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontFamily: AppStrings.jacquesFont,
                                      fontSize: 30.sp,
                                    ),
                                  ),
                                ),
                              ),
                              GapWidget(10.sp),
                              Hero(
                                tag: AppStrings.firstFormHero,
                                child: Card(
                                  elevation: 0,
                                  color: AppColors.white,
                                  child: FormFieldWidget(
                                    onSaved: (value) {
                                      controller.iD = value;
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return AppStrings.iDEmptyValidate;
                                      } else if (value.length != 8) {
                                        return AppStrings.iDMoreOrLessThen8NumbersValidate;
                                      }
                                      return null;
                                    },
                                    labelName: AppStrings.iDText,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                              GapWidget(10.sp),
                              Hero(
                                tag: AppStrings.secondFormHero,
                                child: Card(
                                  elevation: 0,
                                  color: AppColors.white,
                                  child: Obx(
                                    () {
                                      return FormFieldWidget(
                                        onSaved: (value) {
                                          controller.password = value;
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return AppStrings.passwordEmptyValidate;
                                          } else if (value.length < 8) {
                                            return AppStrings.passwordLessThen8Validate;
                                          } else if (value.length > 24) {
                                            return AppStrings.passwordLargerThen24Validate;
                                          }
                                          return null;
                                        },
                                        labelName: AppStrings.passwordText,
                                        keyboardType: TextInputType.visiblePassword,
                                        obscure: controller.obscure.value,
                                        suffixIcon: InkWell(
                                          onTap: () {
                                            controller.obscureToggle();
                                          },
                                          child: Icon(
                                            controller.obscure.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              GapWidget(10.sp),
                              Obx(
                                () {
                                  return InkWell(
                                    onTap: () {
                                      controller.autisticKid.value = !controller.autisticKid.value;
                                    },
                                    child: Row(
                                      children: [
                                        GapWidget(15.sp),
                                        Stack(
                                          children: [
                                            Container(
                                              height: 20.sp,
                                              width: 20.sp,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: controller.autisticKid.value ? AppColors.darkBlue : AppColors.white,
                                                borderRadius: BorderRadius.circular(5.sp),
                                                border: Border.all(
                                                  color: controller.autisticKid.value ? AppColors.darkBlue : AppColors.transparentDarkBlue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        GapWidget(10.sp),
                                        Text(
                                          AppStrings.kidHasAutismText + AppStrings.questionSign,
                                          style: TextStyle(
                                            color: controller.autisticKid.value ? AppColors.darkBlue : AppColors.transparentDarkBlue,
                                            fontSize: 16.sp,
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                              GapWidget(20.sp),
                              Hero(
                                tag: AppStrings.buttonHero,
                                child: Card(
                                  elevation: 0,
                                  color: AppColors.white,
                                  child: Obx(
                                    () {
                                      return InkWell(
                                        onTap: () {
                                          controller.signInValidation();
                                        },
                                        child: AnimatedContainer(
                                          duration: const Duration(milliseconds: 500),
                                          onEnd: () {
                                            controller.animationStarted.value = false;
                                          },
                                          height: 50.sp,
                                          width: controller.isLoading.value ? 50.sp : 300.sp,
                                          decoration: BoxDecoration(
                                            color: AppColors.darkBlue,
                                            borderRadius: BorderRadius.circular(controller.isLoading.value ? 100.sp : 10.sp),
                                            gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                AppColors.darkBlue,
                                                AppColors.lightBlue,
                                              ],
                                            ),
                                          ),
                                          child: controller.isLoading.value
                                              ? controller.animationStarted.value
                                                  ? GapWidget(0.sp)
                                                  : const CircularProgressIndicator(
                                                      color: AppColors.white,
                                                      strokeAlign: -5,
                                                    )
                                              : controller.animationStarted.value
                                                  ? GapWidget(0.sp)
                                                  : Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          AppStrings.signInCText,
                                                          style: TextStyle(
                                                            color: AppColors.white,
                                                            fontSize: 20.sp,
                                                          ),
                                                        ),
                                                        GapWidget(10.sp),
                                                        const Icon(
                                                          Icons.arrow_forward,
                                                          color: AppColors.white,
                                                        )
                                                      ],
                                                    ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              GapWidget(10.sp),
                              Hero(
                                tag: AppStrings.textHero,
                                child: Card(
                                  elevation: 0,
                                  color: AppColors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        AppStrings.doNotHaveAccountText + AppStrings.spaceSign,
                                        style: TextStyle(
                                          color: AppColors.transparentDarkBlue,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => Get.offNamed(AppStrings.signupRout),
                                        child: Text(
                                          AppStrings.signupText + AppStrings.questionSign,
                                          style: TextStyle(
                                            color: AppColors.transparentDarkBlue,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
