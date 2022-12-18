import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_lens/application/subreddit_dashboard/subreddit_dashboard_bloc.dart';

class SubredditDashboardBody extends StatelessWidget {
  final String subredditName;

  const SubredditDashboardBody({
    Key? key,
    required this.subredditName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubredditDashboardBloc, SubredditDashboardState>(
      builder: (context, state) => state.maybeMap(
        initial: (_) => Center(
          child: Text(
            'No data for topic $subredditName',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        loadInProgress: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadSuccess: (state) => Center(
          child: StreamBuilder(
            stream: state.subredditComments,
            builder: (context, snapshot) {
              return Text(snapshot.data.toString());
            },
          ),
        ),
        orElse: () => Container(),
      ),
    );
  }
}
