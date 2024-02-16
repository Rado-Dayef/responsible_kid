import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsible_kid/constants/app_colors.dart';
import 'package:responsible_kid/constants/app_strings.dart';
import 'package:responsible_kid/controllers/auth/signup_controller.dart';
import 'package:responsible_kid/views/widgets/form_field_widget.dart';
import 'package:responsible_kid/views/widgets/gap_widget.dart';

class SignupScreen extends GetWidget<SignUpController> {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppStrings.authBGAsset),
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
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
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.sp),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        GapWidget(25.sp),
                        CircleAvatar(
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
                        GapWidget(10.sp),
                        FormFieldWidget(
                          onSaved: (value) {
                            controller.name = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppStrings.nameEmptyValidate;
                            } else if (value.length > 24) {
                              return AppStrings.nameLargerThen24Validate;
                            } else if (value.length < 4) {
                              return AppStrings.nameLessThen4Validate;
                            }
                            return null;
                          },
                          labelName: AppStrings.nameText,
                          keyboardType: TextInputType.text,
                        ),
                        GapWidget(10.sp),
                        FormFieldWidget(
                          onSaved: (value) {
                            controller.birthdate = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppStrings.birthDateEmptyValidate;
                            } else if (value.length != 10 || value[2] != AppStrings.backSlashSign || value[5] != AppStrings.backSlashSign) {
                              return AppStrings.invalidBirthDateValidate;
                            } else if (int.parse(value[0] + value[1]) > 31 || int.parse(value[0] + value[1]) < 0) {
                              return AppStrings.invalidDayValidate;
                            } else if (int.parse(value[3] + value[4]) > 12 || int.parse(value[3] + value[4]) < 0) {
                              return AppStrings.invalidMonthValidate;
                            } else if (int.parse(value[6] + value[7] + value[8] + value[9]) < 1900) {
                              return AppStrings.invalidYearValidate;
                            }
                            return null;
                          },
                          labelName: AppStrings.birthdateText,
                          keyboardType: TextInputType.text,
                        ),
                        GapWidget(10.sp),
                        Obx(
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
                        GapWidget(20.sp),
                        Obx(
                          () {
                            return InkWell(
                              onTap: () {
                                controller.signInValidation();
                                var formData = controller.formKey.currentState;
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
                                                AppStrings.signUpCText,
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
                        GapWidget(10.sp),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.alreadyHaveAccountText + AppStrings.spaceSign,
                              style: TextStyle(
                                color: AppColors.transparentDarkBlue,
                                fontSize: 15.sp,
                              ),
                            ),
                            InkWell(
                              onTap: () => Get.offNamed(AppStrings.loginRout),
                              child: Text(
                                AppStrings.signInText + AppStrings.questionSign,
                                style: TextStyle(
                                  color: AppColors.transparentDarkBlue,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
