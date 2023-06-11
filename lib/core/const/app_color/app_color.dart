import 'package:flutter/material.dart';

class AppColor {
  //auth color
  static const authBgColor = [Color(0xff188095), Color(0xff2AB3C6)];
  static const loginTextColor = Colors.white;
  static const continueTextColor = Colors.white;
  static const buttonColor = Color(0xff2AB3C6);
  static final needHelpColor = const Color(0xff000000).withOpacity(.65);
  static final emailLabelColor = const Color(0xff000000).withOpacity(.85);

  //home color
  static const homeAppbarTitle = Color(0xff08293B);
  static const homeAppbarBgColor = Color(0xffFFFFFF);
  static const homeSubtitle = Color(0xff08293B);

  //detail
  static const detailDefaultIconColor = Color(0xff08293B);
  static const detailUploadIconColor = Color(0xff2AB3C6);
  static const descriptionTextColor = Color(0xff444B51);
  static const descriptionSubtitleTextColor = Color(0xff838396);
  static const explainContainerColor = Color(0xffF1F1F1);
  static const reviewTextColor = Color(0xff444B51);

  static final detailAppbarBg = [
    const Color.fromARGB(0, 104, 104, 105).withOpacity(.6),
    const Color(0xff00000000).withOpacity(.01),
  ];
}
