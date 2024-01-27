import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahab_appli/core/utils/icons/app_icons.dart';
import 'package:sahab_appli/core/utils/storage/app_storage.dart';
import 'package:sahab_appli/core/utils/theme/app_theme.dart';
import 'package:sahab_appli/core/utils/widgets/app_button.dart';
import 'package:sahab_appli/core/utils/widgets/background_app.dart';
import 'package:sahab_appli/features/boarding/presentation/bloc/boarding_bloc.dart';
import 'package:sahab_appli/features/boarding/presentation/widgets/choose_lang_widget.dart';
import 'package:sahab_appli/features/boarding/presentation/widgets/text_lang_widget.dart';
import 'package:sahab_appli/injection_container.dart' as di;
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class LangScreen extends StatelessWidget {
  const LangScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<BoardingBloc>(),
      child: BlocConsumer<BoardingBloc, BoardingState>(
        listener: (context, state) {
          if (state is ChooseLangState) {
            AppStorage().setLang(state.lang);
          }
          print(state);
        },
        builder: (context, state) {
          var bloc = BoardingBloc.get(context);
          return Scaffold(
            body: BackgroundApp(
              widget: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 180.h,
                    ),
                  ),
                  Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppIcons.group,
                          ),
                          TextLanWidget(),
                        ],
                      )),
                  Expanded(
                    flex: 4,
                    child: ChooseLangWidget(englishOnTap: () {
                      bloc.add(const ChooseLangEvent(lang: 'en'));
                    }, arabicOnTap: () {
                      bloc.add(const ChooseLangEvent(lang: 'ar'));
                    }),
                  ),
                  const Expanded(
                    flex: 1,
                    child: SizedBox(),
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
