import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';

class BaseIcon extends StatelessWidget {
  const BaseIcon({
    super.key,
    required this.icon,
    required this.onTap,
    this.iconColor,
    this.radius,
    this.width,
    this.height,
  });
  final IconData icon;
  final Function() onTap;
  final Color? iconColor;
  final double? radius;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? 40.w,
        height: height ?? 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 12.sp),
          color: Colors.white,
        ),
        child: Icon(
          icon,
          color: iconColor ?? AppColor.detailDefaultIconColor,
          size: 22.sp,
        ),
      ),
    );
  }
}
