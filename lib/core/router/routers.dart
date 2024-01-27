import 'package:auto_route/auto_route.dart';
// part 'app_router.gr.dart';

import 'package:sahab_appli/core/router/routers.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: LauncherScreen.page, initial: true, path: '/'),
        AutoRoute(
          page: SkipScreen.page,
          path: '/skipScreen',
        ),
        AutoRoute(
          page: LangScreen.page,
          path: '/langScreen',
        ),
      ];
}
