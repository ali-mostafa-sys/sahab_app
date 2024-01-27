import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahab_appli/core/utils/images/boarding_images/app_boarding.dart';
import 'package:sahab_appli/core/utils/logo/logos_app.dart';
import 'package:sahab_appli/core/utils/widgets/background_app.dart';
import 'package:sahab_appli/features/boarding/presentation/bloc/boarding_bloc.dart';
import 'package:sahab_appli/injection_container.dart' as di;

@RoutePage()
class LauncherScreen extends StatelessWidget {
  const LauncherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => di.sl<BoardingBloc>()..add(WaitingLauncherEvent()),
      child: BlocConsumer<BoardingBloc, BoardingState>(
        listener: (context, state) {
          if (state is WaitingLauncherState) {
            Future.delayed(Duration(seconds: 5)).then(
                (value) => AutoRouter.of(context).replaceNamed('/skipScreen'));
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                BackgroundApp(
                  widget: Center(
                      child: Image.asset(
                    LogoApp.layer1,
                    width: 186.w,
                    height: 202.72.h,
                  )),
                ),
                Positioned(
                    bottom: 0,
                    child: Image.asset(
                      AppBoarding.boardingLogo,
                      width: w,
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
