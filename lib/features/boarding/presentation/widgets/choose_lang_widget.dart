import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahab_appli/core/utils/theme/app_theme.dart';
import 'package:sahab_appli/core/utils/widgets/app_button.dart';

class ChooseLangWidget extends StatelessWidget {
  ChooseLangWidget(
      {Key? key, required this.englishOnTap, required this.arabicOnTap})
      : super(key: key);
  void Function()? englishOnTap;
  void Function()? arabicOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
            width: 185.w,
            height: 100.h,
            onTap: englishOnTap,
            text: 'English',
            color: AppColor.blueColor,
            radius: 10.r,
            fontSize: 18.sp,
            fontFamily: AppFont.Poppins,
            textColor: AppColor.textColor,
            fontWeight: FontWeight.w600),
        SizedBox(
          height: 38,
        ),
        AppButton(
            width: 185.w,
            height: 100.h,
            onTap: arabicOnTap,
            text: 'العربية',
            color: AppColor.secondPrimaryColor,
            radius: 10.r,
            fontSize: 18.sp,
            fontFamily: AppFont.Almarai,
            textColor: AppColor.textColor,
            fontWeight: FontWeight.w700),
      ],
    );
  }
}
