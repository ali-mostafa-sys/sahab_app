// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:sahab_appli/features/boarding/presentation/pages/lang_screen.dart'
    as _i1;
import 'package:sahab_appli/features/boarding/presentation/pages/launcher_screen.dart'
    as _i2;
import 'package:sahab_appli/features/boarding/presentation/pages/skip_screen.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LangScreen.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LangScreen(),
      );
    },
    LauncherScreen.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LauncherScreen(),
      );
    },
    SkipScreen.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SkipScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.LangScreen]
class LangScreen extends _i4.PageRouteInfo<void> {
  const LangScreen({List<_i4.PageRouteInfo>? children})
      : super(
          LangScreen.name,
          initialChildren: children,
        );

  static const String name = 'LangScreen';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LauncherScreen]
class LauncherScreen extends _i4.PageRouteInfo<void> {
  const LauncherScreen({List<_i4.PageRouteInfo>? children})
      : super(
          LauncherScreen.name,
          initialChildren: children,
        );

  static const String name = 'LauncherScreen';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SkipScreen]
class SkipScreen extends _i4.PageRouteInfo<void> {
  const SkipScreen({List<_i4.PageRouteInfo>? children})
      : super(
          SkipScreen.name,
          initialChildren: children,
        );

  static const String name = 'SkipScreen';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
