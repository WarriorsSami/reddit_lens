import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reddit_lens/presentation/routes/app_router.gr.dart';

class SubredditsOverviewPage extends StatelessWidget {
  const SubredditsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          AutoRouter.of(context).push(
            const SubredditDashboardPageRoute(),
          );
        },
        child: const Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}
