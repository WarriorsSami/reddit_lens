// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../subreddits/subreddit_dashboard/subreddit_dashboard_page.dart' as _i2;
import '../subreddits/subreddits_overview/subreddits_overview_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SubredditsOverviewPageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SubredditsOverviewPage(),
      );
    },
    SubredditDashboardPageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SubredditDashboardPage(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          SubredditsOverviewPageRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          SubredditDashboardPageRoute.name,
          path: '/subreddit-dashboard-page',
        ),
      ];
}

/// generated route for
/// [_i1.SubredditsOverviewPage]
class SubredditsOverviewPageRoute extends _i3.PageRouteInfo<void> {
  const SubredditsOverviewPageRoute()
      : super(
          SubredditsOverviewPageRoute.name,
          path: '/',
        );

  static const String name = 'SubredditsOverviewPageRoute';
}

/// generated route for
/// [_i2.SubredditDashboardPage]
class SubredditDashboardPageRoute extends _i3.PageRouteInfo<void> {
  const SubredditDashboardPageRoute()
      : super(
          SubredditDashboardPageRoute.name,
          path: '/subreddit-dashboard-page',
        );

  static const String name = 'SubredditDashboardPageRoute';
}
