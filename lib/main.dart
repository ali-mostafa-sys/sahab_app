import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sahab_appli/core/router/routers.dart';
import 'package:sahab_appli/core/utils/storage/app_storage.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// here for injection
  await di.init();

  /// here for lan
  String lang = AppLang().getLang();

  /// here for lang
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        //Locale('en'), Locale('ar')
        supportedLocales: [Locale(lang)],
        path: 'assets/translations',
        fallbackLocale: Locale(
          lang,
        ),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
        );
      },
    );
  }
}
