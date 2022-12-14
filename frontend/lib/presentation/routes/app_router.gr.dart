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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../subreddits/subreddit_dashboard/subreddit_dashboard_page.dart' as _i2;
import '../subreddits/subreddit_form/subreddit_form_page.dart' as _i3;
import '../subreddits/subreddits_overview/subreddits_overview_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SubredditsOverviewPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SubredditsOverviewPage(),
      );
    },
    SubredditDashboardPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubredditDashboardPageRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.SubredditDashboardPage(
          key: args.key,
          subredditName: args.subredditName,
        ),
      );
    },
    SubredditFormPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SubredditFormPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SubredditsOverviewPageRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          SubredditDashboardPageRoute.name,
          path: '/subreddit-dashboard-page',
        ),
        _i4.RouteConfig(
          SubredditFormPageRoute.name,
          path: '/subreddit-form-page',
        ),
      ];
}

/// generated route for
/// [_i1.SubredditsOverviewPage]
class SubredditsOverviewPageRoute extends _i4.PageRouteInfo<void> {
  const SubredditsOverviewPageRoute()
      : super(
          SubredditsOverviewPageRoute.name,
          path: '/',
        );

  static const String name = 'SubredditsOverviewPageRoute';
}

/// generated route for
/// [_i2.SubredditDashboardPage]
class SubredditDashboardPageRoute
    extends _i4.PageRouteInfo<SubredditDashboardPageRouteArgs> {
  SubredditDashboardPageRoute({
    _i5.Key? key,
    required String subredditName,
  }) : super(
          SubredditDashboardPageRoute.name,
          path: '/subreddit-dashboard-page',
          args: SubredditDashboardPageRouteArgs(
            key: key,
            subredditName: subredditName,
          ),
        );

  static const String name = 'SubredditDashboardPageRoute';
}

class SubredditDashboardPageRouteArgs {
  const SubredditDashboardPageRouteArgs({
    this.key,
    required this.subredditName,
  });

  final _i5.Key? key;

  final String subredditName;

  @override
  String toString() {
    return 'SubredditDashboardPageRouteArgs{key: $key, subredditName: $subredditName}';
  }
}

/// generated route for
/// [_i3.SubredditFormPage]
class SubredditFormPageRoute extends _i4.PageRouteInfo<void> {
  const SubredditFormPageRoute()
      : super(
          SubredditFormPageRoute.name,
          path: '/subreddit-form-page',
        );

  static const String name = 'SubredditFormPageRoute';
}
