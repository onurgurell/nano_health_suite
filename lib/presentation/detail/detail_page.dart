import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/application/home/home_bloc.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';
import 'package:nano_health_suite/core/const/app_image/app_image_path.dart';
import 'package:nano_health_suite/core/const/app_strings/app_strings.dart';
import 'package:nano_health_suite/core/extension/context_extension.dart';
import 'package:nano_health_suite/presentation/detail/widget/base_icon.dart';
import 'package:nano_health_suite/presentation/detail/widget/icon_and_detail_text.dart';
import 'package:nano_health_suite/ui_kit/star_rating_bar.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.imageUrl,
    required this.description,
    required this.reviewCount,
    required this.rate,
    required this.count,
  });
  final String imageUrl;
  final String description;
  final int reviewCount;
  final double count;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: context.getDynmaicWidth(1),
                      height: context.getDynmaicHeight(1),
                      child: Image.network(imageUrl),
                    ),
                    const IconsAndDetailText(),
                    Positioned(
                      left: 35.w,
                      bottom: state.isUpOrDownContainer ? 400.h : 270.h,
                      child: SizedBox(
                        width: context.getDynmaicWidth(.4),
                        height: 40.h,
                        child: Text(
                          count.toString(),
                          style: TextStyle(
                            fontSize: 32.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: context.getDynmaicWidth(1),
                        height: context.getDynmaicHeight(
                            state.isUpOrDownContainer ? .42 : .27),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(22.sp),
                            topRight: Radius.circular(22.sp),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          child: SingleChildScrollView(
                            physics: const NeverScrollableScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                10.h.verticalSpace,
                                Center(
                                  child: InkWell(
                                    onTap: () {
                                      context
                                          .read<HomeBloc>()
                                          .add(DetailChangeSizeEvent());
                                    },
                                    child: Image.asset(
                                      state.isUpOrDownContainer
                                          ? AppImagePath.downIcon
                                          : AppImagePath.upIcon,
                                    ),
                                  ),
                                ),
                                20.h.verticalSpace,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                        borderRadius:
                                            BorderRadius.circular(43.sp),
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
                                    description,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color:
                                          AppColor.descriptionSubtitleTextColor,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.w, top: 5.h),
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
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
