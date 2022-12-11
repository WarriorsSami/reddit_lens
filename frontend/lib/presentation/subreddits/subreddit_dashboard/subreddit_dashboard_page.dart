import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SubredditDashboardPage extends StatelessWidget {
  const SubredditDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reddit Lens'),
        leading: BackButton(
          onPressed: () {
            AutoRouter.of(context).pop();
          },
        ),
      ),
      body: const Center(
        child: Text('SubredditDashboardPage'),
      ),
    );
  }
}
