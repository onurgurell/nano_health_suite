import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/application/home/home_bloc.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';
import 'package:nano_health_suite/core/extension/context_extension.dart';
import 'package:nano_health_suite/presentation/detail/detail_page.dart';
import 'package:nano_health_suite/ui_kit/star_rating_bar.dart';

class HomeProductCard extends StatelessWidget {
  const HomeProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.failureOrProductOption.fold(
          () {
            return const Center(child: CircularProgressIndicator.adaptive());
          },
          (failureOrProductModel) {
            return failureOrProductModel.fold(
              (_) {
                return Container(
                  width: 10,
                  height: 10,
                  color: Colors.red,
                );
              },
              (getProductModel) {
                return SizedBox(
                  width: context.getDynmaicWidth(1),
                  height: context.getDynmaicHeight(1),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: getProductModel.id,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                      imageUrl:
                                          getProductModel.image.toString(),
                                      description: getProductModel.description
                                          .toString(),
                                      reviewCount:
                                          getProductModel.rating!.count ?? 0,
                                      rate: getProductModel.rating!.rate ?? 0,
                                      count: getProductModel.price ?? 0,
                                    ),
                                  ),
                                );
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    width: context.getDynmaicWidth(.9),
                                    height: context.getDynmaicHeight(.25),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(22.sp),
                                    ),
                                    child: Image.network(
                                      getProductModel.image.toString(),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    left: 10.w,
                                    child: SizedBox(
                                      width: context.getDynmaicWidth(.4),
                                      height: 32,
                                      child: Text(
                                        getProductModel.price.toString(),
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 13.h,
                                    right: 10.w,
                                    child: StarRatingBar(
                                        itemSize: 22.sp,
                                        rate:
                                            getProductModel.rating?.rate ?? 0),
                                  ),
                                ],
                              ),
                            ),
                            18.h.verticalSpace,
                            Text(
                              getProductModel.title ?? "aaaaa",
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
                                getProductModel.description ?? "descr",
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
              },
            );
          },
        );
      },
    );
  }
}
