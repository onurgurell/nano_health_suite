import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';
import 'package:nano_health_suite/core/const/app_strings/app_strings.dart';
import 'package:nano_health_suite/core/extension/context_extension.dart';
import 'package:nano_health_suite/ui_kit/star_rating_bar.dart';

class DetailCardDescription extends StatelessWidget {
  const DetailCardDescription({
    super.key,
    required this.reviewCount,
    required this.rate,
  });

  final int reviewCount;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getDynmaicWidth(.9),
      height: context.getDynmaicHeight(.1),
      decoration: BoxDecoration(
        color: AppColor.explainContainerColor,
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.w, top: 5.h),
            child: Text(
              "${AppStrings.reviewText} ($reviewCount)",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: AppColor.reviewTextColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21.w,
              top: 8.h,
            ),
            child: Row(
              children: [
                Text(
                  rate.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32.sp,
                  ),
                ),
                30.w.horizontalSpace,
                StarRatingBar(rate: rate),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
