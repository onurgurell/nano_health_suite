import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.suffixIcon,
    required this.isObscure,
    required this.controller,
  });

  final String labelText;
  final Widget suffixIcon;
  final bool isObscure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: AppColor.emailLabelColor,
        ),
      ),
    );
  }
}
