import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';
import 'package:nano_health_suite/core/const/app_strings/app_strings.dart';
import 'package:nano_health_suite/core/extension/context_extension.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getDynmaicWidth(1),
      height: context.getDynmaicHeight(.13),
      decoration: BoxDecoration(
        color: AppColor.homeAppbarBgColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35.sp),
          bottomRight: Radius.circular(35.sp),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 47),
          child: Text(
            AppStrings.allProducts,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28.sp,
              color: AppColor.homeAppbarTitle,
            ),
          ),
        ),
      ),
    );
  }
}
