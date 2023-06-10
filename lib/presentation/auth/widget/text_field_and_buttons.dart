import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';
import 'package:nano_health_suite/core/const/app_image/app_image_path.dart';
import 'package:nano_health_suite/core/const/app_strings/app_strings.dart';
import 'package:nano_health_suite/core/extension/context_extension.dart';
import 'package:nano_health_suite/core/router/routes.dart';
import 'package:nano_health_suite/presentation/auth/widget/custom_text_field.dart';
import 'package:nano_health_suite/view_model/auth/auth_view_model.dart';
import 'package:provider/provider.dart';

class TextFieldsAndButtons extends StatelessWidget {
  const TextFieldsAndButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthViewModel(),
      builder: (context, child) {
        return Consumer<AuthViewModel>(
          builder: (context, viewModel, _) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.w),
              child: Column(
                children: [
                  CustomTextField(
                    controller: viewModel.emailController,
                    suffixIcon: Image.asset(AppImagePath.emailIconImage),
                    labelText: AppStrings.emailLabelText,
                    isObscure: false,
                  ),
                  32.h.verticalSpace,
                  CustomTextField(
                    controller: viewModel.passwordController,
                    suffixIcon: GestureDetector(
                      onTap: () =>
                          viewModel.changepasswordFormFieldobscureText(),
                      child: getPasswordFormFieldSuffixIcon(
                        viewModel.passwordFormFieldobscureText,
                      ),
                    ),
                    labelText: AppStrings.passwordLabelText,
                    isObscure: viewModel.passwordFormFieldobscureText,
                  ),
                  24.h.verticalSpace,
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.homePage);
                    },
                    child: Container(
                      width: context.getDynmaicWidth(.9),
                      height: 74.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(62.sh),
                        color: AppColor.buttonColor,
                      ),
                      child: const Center(
                        child: Text(
                          AppStrings.continueButton,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: AppColor.continueTextColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  43.h.verticalSpace,
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.needHelpButton,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColor.needHelpColor,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}

Widget getPasswordFormFieldSuffixIcon(bool isObsecure) =>
    Icon(isObsecure ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
        color: Colors.black);
