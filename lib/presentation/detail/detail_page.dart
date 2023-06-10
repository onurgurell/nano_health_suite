import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';
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
                  bottom: 300.h,
                  child: Container(
                    color: Colors.pink,
                    width: context.getDynmaicWidth(.3),
                    height: 40.h,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: context.getDynmaicWidth(1),
                    height: context.getDynmaicHeight(.3),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22.sp),
                        topRight: Radius.circular(22.sp),
                      ),
                    ),
                    child: Column(
                      children: [
                        20.h.verticalSpace,
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          child: Row(
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
                        )
                      ],
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
