import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_lens/application/subreddits_overview/subreddits_overview_bloc.dart';
import 'package:reddit_lens/di/injection.dart';
import 'package:reddit_lens/presentation/routes/app_router.gr.dart';
import 'package:reddit_lens/presentation/subreddits/subreddits_overview/widgets/subreddits_overview_body_widget.dart';

class SubredditsOverviewPage extends StatelessWidget {
  const SubredditsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SubredditsOverviewBloc>(
      create: (context) => getIt<SubredditsOverviewBloc>()
        ..add(
          const SubredditsOverviewEvent.subredditsRetrieved(),
        ),
      child: BlocListener<SubredditsOverviewBloc, SubredditsOverviewState>(
        listener: (context, state) {
          state.maybeMap(
            loadServer: (state) {
              AutoRouter.of(context).push(
                SubredditDashboardPageRoute(subredditName: state.subreddit),
              );
              BlocProvider.of<SubredditsOverviewBloc>(context).add(
                const SubredditsOverviewEvent.subredditsRetrieved(),
              );
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
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Reddit Lens'),
          ),
          body: const SubredditsOverviewBody(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              AutoRouter.of(context).push(
                const SubredditFormPageRoute(),
              );
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
