import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/core/const/app_strings/app_strings.dart';
import 'package:nano_health_suite/core/extension/context_extension.dart';
import 'package:nano_health_suite/presentation/detail/widget/base_icon.dart';

class IconsAndDetailText extends StatelessWidget {
  const IconsAndDetailText({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            width: context.getDynmaicWidth(1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BaseIcon(
                  onTap: () => Navigator.pop(context),
                  icon: Icons.arrow_back,
                ),
                BaseIcon(
                  onTap: () {},
                  icon: Icons.more_vert,
                ),
              ],
            ),
          ),
          20.h.verticalSpace,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Text(
              AppStrings.detailText,
              style: TextStyle(
                fontSize: 28.sp,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
