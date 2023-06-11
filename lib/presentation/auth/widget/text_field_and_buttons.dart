import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/application/auth/auth_bloc.dart';
import 'package:nano_health_suite/core/const/app_color/app_color.dart';
import 'package:nano_health_suite/core/const/app_image/app_image_path.dart';
import 'package:nano_health_suite/core/const/app_strings/app_strings.dart';
import 'package:nano_health_suite/core/extension/context_extension.dart';
import 'package:nano_health_suite/core/router/routes.dart';
import 'package:nano_health_suite/injection.dart';
import 'package:nano_health_suite/presentation/auth/widget/custom_text_field.dart';

class TextFieldsAndButtons extends StatelessWidget {
  const TextFieldsAndButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.w),
            child: Column(
              children: [
                CustomTextField(
                  controller: emailController,
                  suffixIcon: Image.asset(AppImagePath.emailIconImage),
                  labelText: AppStrings.emailLabelText,
                  isObscure: false,
                ),
                32.h.verticalSpace,
                CustomTextField(
                  controller: passwordController,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      context.read<AuthBloc>().add(AuthFormEvent());
                    },
                    child: getPasswordFormFieldSuffixIcon(
                      state.passwordFormFieldobscureText,
                    ),
                  ),
                  labelText: AppStrings.passwordLabelText,
                  isObscure: state.passwordFormFieldobscureText,
                ),
                24.h.verticalSpace,
                InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, Routes.homePage,
                        (Route<dynamic> route) => false);
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
      ),
    );
  }
}

Widget getPasswordFormFieldSuffixIcon(bool isObsecure) =>
    Icon(isObsecure ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
        color: Colors.black);
