import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/application/home/home_bloc.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';
import 'package:nano_health_suite/core/const/app_image/app_image_path.dart';
import 'package:nano_health_suite/core/const/app_strings/app_strings.dart';
import 'package:nano_health_suite/core/extension/context_extension.dart';
import 'package:nano_health_suite/presentation/detail/widget/base_icon.dart';
import 'package:nano_health_suite/presentation/detail/widget/detail_card_description.dart';

class DetailBottomCard extends StatelessWidget {
  const DetailBottomCard({
    super.key,
    required this.description,
    required this.reviewCount,
    required this.rate,
  });

  final String description;
  final int reviewCount;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Positioned(
          bottom: 0,
          child: Container(
            width: context.getDynmaicWidth(1),
            height:
                context.getDynmaicHeight(state.isUpOrDownContainer ? .45 : .27),
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
                          context.read<HomeBloc>().add(DetailChangeSizeEvent());
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
                        color: AppColor.descriptionTextColor,
                      ),
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
                          color: AppColor.descriptionSubtitleTextColor,
                        ),
                      ),
                    ),
                    DetailCardDescription(reviewCount: reviewCount, rate: rate)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
