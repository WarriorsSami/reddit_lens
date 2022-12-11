import 'package:auto_route/auto_route.dart';

import '../subreddits/subreddit_dashboard/subreddit_dashboard_page.dart';
import '../subreddits/subreddits_overview/subreddits_overview_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(
    page: SubredditsOverviewPage,
    initial: true,
  ),
  MaterialRoute(
    page: SubredditDashboardPage,
  ),
])
class $AppRouter {}
