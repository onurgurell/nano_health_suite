import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/presentation/home/widget/home_appbar.dart';
import 'package:nano_health_suite/presentation/home/widget/home_product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const HomeAppbar(),
            12.h.verticalSpace,
            const HomeProductCard()
          ],
        ),
      ),
    );
  }
}
