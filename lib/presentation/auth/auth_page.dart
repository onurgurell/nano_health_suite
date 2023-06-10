import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nano_health_suite/presentation/auth/widget/image_and_login_text.dart';
import 'package:nano_health_suite/presentation/auth/widget/text_field_and_buttons.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ImageAndLogInText(),
            54.h.verticalSpace,
            const TextFieldsAndButtons()
          ],
        ),
      ),
    );
  }
}
