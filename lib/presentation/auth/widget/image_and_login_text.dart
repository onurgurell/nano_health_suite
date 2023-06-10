import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';
import 'package:nano_health_suite/core/const/app_image/app_image_path.dart';
import 'package:nano_health_suite/core/const/app_strings/app_strings.dart';
import 'package:nano_health_suite/core/extension/context_extension.dart';

class ImageAndLogInText extends StatelessWidget {
  const ImageAndLogInText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: context.getDynmaicWidth(1),
          height: context.getDynmaicHeight(.5),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: AppColor.authBgColor,
            ),
          ),
          child: Image.asset(AppImagePath.authLoginImage),
        ),
        Positioned(
          left: 36,
          bottom: 30,
          child: Text(
            AppStrings.login,
            style: TextStyle(
              color: AppColor.loginTextColor,
              fontSize: 34.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
