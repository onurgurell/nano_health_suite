import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';
import 'package:nano_health_suite/core/const/app_image/app_image_path.dart';
import 'package:nano_health_suite/core/extension/context_extension.dart';
import 'package:nano_health_suite/core/router/routes.dart';

class HomeProductCard extends StatelessWidget {
  const HomeProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getDynmaicWidth(1),
      height: context.getDynmaicHeight(1),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.detailPage);
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: context.getDynmaicWidth(.9),
                        height: context.getDynmaicHeight(.25),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(22.sp),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10.w,
                        child: SizedBox(
                          width: context.getDynmaicWidth(.4),
                          height: 32,
                          child: Text(
                            "00000 AED",
                            style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 13.h,
                          right: 10.w,
                          child: SizedBox(
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
                          )),
                    ],
                  ),
                ),
                18.h.verticalSpace,
                Text(
                  "Product Name",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                5.h.verticalSpace,
                SizedBox(
                  height: 65.h,
                  width: context.getDynmaicWidth(.8),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.homeSubtitle,
                    ),
                  ),
                ),
                12.h.verticalSpace,
                const Divider(),
                12.h.verticalSpace,
              ],
            ),
          );
        },
      ),
    );
  }
}
