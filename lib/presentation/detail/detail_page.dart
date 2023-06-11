import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';
import 'package:nano_health_suite/core/const/app_image/app_image_path.dart';
import 'package:nano_health_suite/core/const/app_strings/app_strings.dart';
import 'package:nano_health_suite/core/extension/context_extension.dart';
import 'package:nano_health_suite/presentation/detail/widget/base_icon.dart';
import 'package:nano_health_suite/presentation/detail/widget/icon_and_detail_text.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: context.getDynmaicWidth(1),
                  height: context.getDynmaicHeight(1),
                  color: Colors.red,
                ),
                const IconsAndDetailText(),
                Positioned(
                  left: 35.w,
                  bottom: 380.h,
                  child: Container(
                    color: Colors.pink,
                    width: context.getDynmaicWidth(.2),
                    height: 40.h,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: context.getDynmaicWidth(1),
                    height: context.getDynmaicHeight(.4),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22.sp),
                        topRight: Radius.circular(22.sp),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          20.h.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BaseIcon(
                                width: 55.w,
                                height: 55.h,
                                icon: Icons.upload,
                                onTap: () {},
                                iconColor: AppColor.detailUploadIconColor,
                                radius: 22.sp,
                              ),
                              Container(
                                width: context.getDynmaicWidth(.65),
                                height: 55.h,
                                decoration: BoxDecoration(
                                  color: AppColor.buttonColor,
                                  borderRadius: BorderRadius.circular(43.sp),
                                ),
                                child: Center(
                                  child: Text(
                                    AppStrings.orderNowText,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          25.h.verticalSpace,
                          Text(
                            AppStrings.descriptionText,
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic,
                                color: AppColor.descriptionTextColor),
                          ),
                          8.h.verticalSpace,
                          SizedBox(
                            width: context.getDynmaicWidth(.9),
                            height: context.getDynmaicHeight(.12),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: AppColor.descriptionSubtitleTextColor,
                              ),
                            ),
                          ),
                          Container(
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
                                    "${AppStrings.reviewText} (100)",
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
                                        "4.33",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 32.sp,
                                        ),
                                      ),
                                      30.w.horizontalSpace,
                                      SizedBox(
                                        width: context.getDynmaicWidth(.35),
                                        height: 30.h,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 5,
                                          itemBuilder: (context, index) {
                                            return Image.asset(
                                              AppImagePath.starImage,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
