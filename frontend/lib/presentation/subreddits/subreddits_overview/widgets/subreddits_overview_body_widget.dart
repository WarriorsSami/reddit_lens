import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_lens/application/subreddits_overview/subreddits_overview_bloc.dart';

class SubredditsOverviewBody extends StatelessWidget {
  const SubredditsOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubredditsOverviewBloc, SubredditsOverviewState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        loadInProgress: (state) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadSuccess: (state) => ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemCount: state.subreddits.size,
          itemBuilder: (context, index) => ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            tileColor: _getRandomAccentColor(),
            leading: const Icon(
              Icons.reddit,
              size: 40,
              color: Colors.red,
            ),
            title: Text(
              'r/${state.subreddits[index].name}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                context.read<SubredditsOverviewBloc>().add(
                      SubredditsOverviewEvent.subredditRemoved(
                        state.subreddits[index].name,
                      ),
                    );
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.redAccent,
                size: 35,
              ),
            ),
            onTap: () {
              context.read<SubredditsOverviewBloc>().add(
                    SubredditsOverviewEvent.subredditSelected(
                      state.subreddits[index].name,
                    ),
                  );
            },
          ),
        ),
        loadFailure: (state) => Center(
          child: Text(
            state.subredditFailure.map(
              infrastructureFailure: (_) => 'Infrastructure Failure',
              httpFailure: (_) => 'Http Failure',
            ),
          ),
        ),
        loadServer: (state) => Center(
          child: Text(
            'Server started for subreddit: r/${state.subreddit}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

_getRandomAccentColor() {
  final random = Random();
  final colors = [
    Colors.purple,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.lightGreen,
    Colors.lime,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
  ];
  return colors[random.nextInt(colors.length)];
}
