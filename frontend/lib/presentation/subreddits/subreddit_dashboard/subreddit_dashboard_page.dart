import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_lens/application/subreddit_dashboard/subreddit_dashboard_bloc.dart';
import 'package:reddit_lens/di/injection.dart';
import 'package:reddit_lens/presentation/routes/app_router.gr.dart';
import 'package:reddit_lens/presentation/subreddits/subreddit_dashboard/widgets/subreddit_dashboard_body_widget.dart';

class SubredditDashboardPage extends StatelessWidget {
  final String subredditName;

  const SubredditDashboardPage({
    Key? key,
    required this.subredditName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SubredditDashboardBloc>(
      create: (context) => getIt<SubredditDashboardBloc>()
        ..add(
          const SubredditDashboardEvent.commentsRequested(),
        ),
      child: BlocConsumer<SubredditDashboardBloc, SubredditDashboardState>(
        listener: (context, state) {
          state.maybeMap(
            unloadServer: (state) {
              AutoRouter.of(context)
                  .popUntilRouteWithName(SubredditsOverviewPageRoute.name);
            },
            loadFailure: (state) {
              FlushbarHelper.createError(
                duration: const Duration(seconds: 5),
                message: state.subredditFailure.map(
                  infrastructureFailure: (_) =>
                      'InfrastructureException: Could not connect to database',
                  httpFailure: (_) =>
                      'HttpFailure: Could not connect to server',
                ),
              ).show(context);
            },
            orElse: () {},
          );
        },
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: Text('r/$subredditName'),
            leading: BackButton(
              onPressed: () {
                context.read<SubredditDashboardBloc>().add(
                      SubredditDashboardEvent.subredditUnselected(
                        subredditName,
                      ),
                    );
              },
            ),
          ),
          body: SubredditDashboardBody(
            subredditName: subredditName,
          ),
        ),
      ),
    );
  }
}
