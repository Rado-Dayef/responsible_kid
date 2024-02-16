import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:responsible_kid/constants/app_colors.dart';

class AppDefaults {
  static Future<bool?> defaultToast(text) {
    return Fluttertoast.showToast(
      msg: text,
      backgroundColor: AppColors.darkBlue,
      textColor: AppColors.white,
      fontSize: 14.sp,
    );
  }

  static UnderlineInputBorder defaultInputBorder({
    Color? borderColor,
  }) {
    return UnderlineInputBorder(
      borderSide: BorderSide(color: borderColor ?? AppColors.darkBlue),
    );
  }
}
