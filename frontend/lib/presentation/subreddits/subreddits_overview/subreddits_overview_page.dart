import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_lens/presentation/routes/app_router.gr.dart';

import '../../../application/subreddits_overview/subreddits_overview_bloc.dart';
import '../../../injection.dart';

class SubredditsOverviewPage extends StatelessWidget {
  const SubredditsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SubredditsOverviewBloc>(
      create: (context) => getIt<SubredditsOverviewBloc>(),
      child: BlocListener<SubredditsOverviewBloc, SubredditsOverviewState>(
        listener: (context, state) {
          state.maybeMap(
            loadServer: (state) {
              AutoRouter.of(context).push(
                const SubredditDashboardPageRoute(),
              );
            },
            loadFailure: (state) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.subredditFailure.map(
                      infrastructureFailure: (_) =>
                          'InfrastructureException: Could not connect to server',
                      httpFailure: (_) =>
                          'HttpFailure: Could not connect to server',
                    ),
                  ),
                ),
              );
            },
            orElse: () {},
          );
        },
        child: BlocBuilder<SubredditsOverviewBloc, SubredditsOverviewState>(
          builder: (context, state) => Scaffold(
            appBar: AppBar(
              title: const Text('Reddit Lens'),
            ),
            body: const Center(
              child: Text(
                'SubredditsOverviewPage',
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                BlocProvider.of<SubredditsOverviewBloc>(context).add(
                  const SubredditsOverviewEvent.subredditSelected('politics'),
                );
              },
              child: const Icon(Icons.arrow_forward_rounded),
            ),
          ),
        ),
      ),
    );
  }
}
