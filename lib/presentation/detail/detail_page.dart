import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/application/home/home_bloc.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';
import 'package:nano_health_suite/core/extension/context_extension.dart';
import 'package:nano_health_suite/presentation/detail/widget/detail_bottom_card.dart';
import 'package:nano_health_suite/presentation/detail/widget/icon_and_detail_text.dart';

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
                    Container(
                      width: context.getDynmaicHeight(1),
                      height: context.getDynmaicHeight(.18),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: AppColor.detailAppbarBg,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: const IconsAndDetailText(),
                    ),
                    Positioned(
                      left: 35.w,
                      bottom: state.isUpOrDownContainer ? 425.h : 270.h,
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
                    DetailBottomCard(
                      description: description,
                      reviewCount: reviewCount,
                      rate: rate,
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
