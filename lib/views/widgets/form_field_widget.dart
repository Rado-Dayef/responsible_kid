import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsible_kid/constants/app_colors.dart';
import 'package:responsible_kid/constants/app_defaults.dart';

class FormFieldWidget extends StatelessWidget {
  final Color? color;
  final bool? obscure;
  final int? minLines;
  final int? maxLines;
  final bool? readOnly;
  final bool? autofocus;
  final double? padding;
  final String? initVal;
  final String? labelName;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextAlign? textAlign;
  final VoidCallback? onClick;
  final TextInputType? keyboardType;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final TextEditingController? textController;
  final void Function(String)? onFieldSubmitted;

  const FormFieldWidget({
    this.color,
    this.obscure,
    this.readOnly,
    this.textAlign,
    this.autofocus,
    this.maxLines,
    this.minLines,
    this.initVal,
    this.labelName,
    this.padding,
    this.prefixIcon,
    this.suffixIcon,
    this.onClick,
    this.keyboardType,
    this.onSaved,
    this.onChanged,
    this.onFieldSubmitted,
    this.textInputAction,
    this.textController,
    this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: padding ?? 15.w,
        ),
        child: TextFormField(
          textAlign: textAlign ?? TextAlign.left,
          onFieldSubmitted: onFieldSubmitted,
          textInputAction: textInputAction ?? TextInputAction.next,
          textAlignVertical: TextAlignVertical.center,
          minLines: minLines ?? 1,
          maxLines: maxLines ?? 1,
          controller: textController,
          autofocus: autofocus ?? false,
          onTap: onClick,
          readOnly: readOnly ?? false,
          validator: validator,
          onSaved: onSaved,
          onChanged: onChanged,
          initialValue: initVal,
          keyboardType: keyboardType,
          obscureText: obscure ?? false,
          cursorColor: color ?? AppColors.darkBlue,
          style: TextStyle(
            color: color ?? AppColors.darkBlue,
          ),
          decoration: InputDecoration(
            labelText: labelName,
            labelStyle: TextStyle(
              color: color ?? AppColors.darkBlue,
            ),
            border: AppDefaults.defaultInputBorder(
              borderColor: color ?? AppColors.darkBlue,
            ),
            disabledBorder: AppDefaults.defaultInputBorder(
              borderColor: color ?? AppColors.darkBlue,
            ),
            enabledBorder: AppDefaults.defaultInputBorder(
              borderColor: color ?? AppColors.darkBlue,
            ),
            focusedBorder: AppDefaults.defaultInputBorder(
              borderColor: color ?? AppColors.darkBlue,
            ),
            focusedErrorBorder: AppDefaults.defaultInputBorder(
              borderColor: AppColors.red,
            ),
            errorBorder: AppDefaults.defaultInputBorder(
              borderColor: AppColors.red,
            ),
            errorStyle: const TextStyle(
              color: AppColors.red,
            ),
            prefixIconColor: color ?? AppColors.darkBlue,
            prefixIcon: prefixIcon,
            suffixIconColor: color ?? AppColors.darkBlue,
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }
}
