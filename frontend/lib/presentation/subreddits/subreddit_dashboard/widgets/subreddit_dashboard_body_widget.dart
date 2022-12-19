import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:reddit_lens/application/subreddit_dashboard/subreddit_dashboard_bloc.dart';
import 'package:reddit_lens/domain/comments/comment_entity.dart';
import 'package:reddit_lens/presentation/core/info_widget.dart';
import 'package:reddit_lens/presentation/subreddits/subreddit_dashboard/widgets/comment_tile_widget.dart';

class SubredditDashboardBody extends StatefulWidget {
  final String subredditName;

  const SubredditDashboardBody({
    Key? key,
    required this.subredditName,
  }) : super(key: key);

  @override
  State<SubredditDashboardBody> createState() => _SubredditDashboardBodyState();
}

class _SubredditDashboardBodyState extends State<SubredditDashboardBody> {
  KtList<CommentEntity> _comments = emptyList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubredditDashboardBloc, SubredditDashboardState>(
      builder: (context, state) => state.maybeMap(
        initial: (_) => Center(
          child: Text(
            'No data for topic ${widget.subredditName}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        loadInProgress: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadSuccess: (state) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: StreamBuilder(
              stream: state.subredditComments,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.active ||
                    snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Info(
                      message: snapshot.error.toString(),
                      icon: Icons.error,
                      color: Colors.redAccent,
                    );
                  } else if (snapshot.hasData) {
                    if (_comments.size < 10) {
                      _comments = _comments.plus(listOf(snapshot.data!));
                    } else {
                      _comments = _comments
                          .subList(2, _comments.size)
                          .plus(listOf(snapshot.data!));
                    }
                    return ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: _comments.size,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: CommentTile(comment: _comments[index]),
                        );
                      },
                    );
                  } else {
                    return const Info(
                      message: 'No data',
                      icon: Icons.info,
                      color: Colors.blueAccent,
                    );
                  }
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else {
                  return Info(
                    message: '${snapshot.connectionState}',
                    icon: Icons.info,
                    color: Colors.greenAccent,
                  );
                }
              },
            ),
          ),
        ),
        orElse: () => Container(),
      ),
    );
  }
}
