import 'package:auto_route/auto_route.dart';
import 'package:buillient_app/core/screens/main_tabs_screen.dart';
import 'package:buillient_app/home/screens/home_screen.dart';
import 'package:buillient_app/stats/screens/stats_screen.dart';
import 'package:buillient_app/settings/screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';


part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    // ✅ 탭 화면: 반드시 children 내부에만 넣기
    AutoRoute(
      page: MainTabsRoute.page,
      initial: true,
      children: [
        AutoRoute(page: HomeRoute.page, path: 'home'),
        AutoRoute(page: StatsRoute.page, path: 'stats'),
        AutoRoute(page: SettingsRoute.page, path: 'settings'),
      ],
    ),

    // ✅ + 버튼 등에서 이동할 단독 화면은 여기!
/*    AutoRoute(page: RecordAddRoute.page
        , path: '/record/add'
        ,usesPathAsKey: true),*/

    /*AutoRoute(page: LoginRoute.page, path: '/login'),*/
  ];
}
