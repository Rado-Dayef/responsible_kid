import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsible_kid/constants/app_colors.dart';

class AkChatScreen extends StatelessWidget {
  const AkChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      appBar: AppBar(
        backgroundColor: AppColors.darkBlue,
        title: Text(
          "Chat Bot",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 20.sp,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.white,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.sp),
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: 50.sp,
              alignment: Alignment.center,
              child: Text(
                "Is there is any thing do you want to talk about today?",
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.only(bottom: 5.sp),
        child: Container(
          height: 60.sp,
          padding: EdgeInsets.symmetric(
            horizontal: 10.sp,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 280.sp,
                alignment: Alignment.center,
                child: TextFormField(
                  minLines: 1,
                  maxLines: 10,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18.sp,
                  ),
                  cursorColor: AppColors.white,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.darkBlue,
                    labelStyle: TextStyle(
                      color: AppColors.white,
                    ),
                    hintText: "Type Your Message Here",
                    hintStyle: TextStyle(
                      color: AppColors.white,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(15.sp),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(15.sp),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(15.sp),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(15.sp),
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25.sp,
                backgroundColor: AppColors.darkBlue,
                child: Icon(
                  Icons.send_rounded,
                  color: AppColors.white,
                  size: 20.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
