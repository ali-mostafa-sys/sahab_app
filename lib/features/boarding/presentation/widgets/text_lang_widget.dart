import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahab_appli/core/utils/theme/app_theme.dart';

class TextLanWidget extends StatelessWidget {
  const TextLanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 29.h,
        ),
        Text(
          'Choose your language',
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w600,
            fontFamily: AppFont.Poppins,
          ),
        ),
        SizedBox(
          height: 11.h,
        ),
        Text(
          'Please choose your language!',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            fontFamily: AppFont.Poppins,
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
