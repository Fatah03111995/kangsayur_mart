// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/core/themes/text_styles.dart';

class InputText extends StatelessWidget {
  final String hint;
  final String? label;
  final String? value;
  final bool isVisible;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  const InputText({
    super.key,
    required this.hint,
    this.label,
    this.value,
    this.isVisible = true,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyles.sm.copyWith(
        color: Theme.of(context).myColorTxt,
      ),
      onChanged: onChanged,
      controller: controller,
      obscureText: !isVisible,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyles.sm.copyWith(
            color: Theme.of(context).myColorTxt.withOpacity(0.6),
          ),
          labelText: label,
          labelStyle: TextStyles.sm.copyWith(
              color: Theme.of(context).myColorTxt, fontWeight: FontWeight.bold),
          fillColor: Theme.of(context).myColorContainer,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.w),
            borderSide: BorderSide(
              color: Theme.of(context).myColorTxt.withOpacity(0.7),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.w),
            borderSide: BorderSide(color: MyColor.blue1),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon),
    );
  }
}
