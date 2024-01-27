import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahab_appli/core/utils/images/boarding_images/app_boarding.dart';
import 'package:sahab_appli/core/utils/storage/app_storage.dart';
import 'package:sahab_appli/core/utils/theme/app_theme.dart';
import 'package:sahab_appli/core/utils/widgets/app_button.dart';
import 'package:sahab_appli/core/utils/widgets/background_app.dart';
import 'package:sahab_appli/features/boarding/presentation/bloc/boarding_bloc.dart';
import 'package:sahab_appli/injection_container.dart' as di;

@RoutePage()
class SkipScreen extends StatelessWidget {
  const SkipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => di.sl<BoardingBloc>(),
      child: BlocConsumer<BoardingBloc, BoardingState>(
        listener: (context, state) {
          if (state is SkipButtonState) {
            AppStorage().setIsSkip(true);
            print(AppStorage().getIsSkip());
            print(AppStorage().getLang());
            print(AppLang().getLang());
            AutoRouter.of(context).pushNamed('/langScreen');
            print(state);
          }
        },
        builder: (context, state) {
          var bloc = BoardingBloc.get(context);
          return SafeArea(
            child: Scaffold(
              body: Stack(
                children: [
                  BackgroundApp(
                      widget: Image.asset(
                    AppBoarding.skip,
                    width: w,
                    height: h,
                    fit: BoxFit.fill,
                  )),
                  Positioned(
                    bottom: 15.h,
                    right: 22.86.w,
                    left: 21.w,
                    child: AppButton(
                        width: w,
                        height: 50.h,
                        onTap: () {
                          bloc.add(SkipButtonEvent());
                        },
                        text: 'Skip',
                        color: AppColor.blueColor,
                        radius: 10.r,
                        fontSize: 16.sp,
                        fontFamily: AppFont.Poppins,
                        textColor: AppColor.textColor,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// GestureDetector(
// onTap: () {},
// child: Container(
// width: w,
// height: 50.h,
// decoration: BoxDecoration(
// color: AppColor.blueColor,
// borderRadius:
// BorderRadius.all(Radius.circular(10.r))),
// child: Center(
// child: Text(
// 'Skip',
// style: TextStyle(
// fontSize: 16.sp,
// fontFamily: AppFont.Poppins,
// color: AppColor.textColor,
// fontWeight: FontWeight.w600),
// )),
// ),
// )
