import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_lens/application/subreddit_form/subreddit_form_bloc.dart';
import 'package:reddit_lens/di/injection.dart';
import 'package:reddit_lens/presentation/subreddits/subreddit_form/widgets/subreddit_form_body_widget.dart';

class SubredditFormPage extends StatelessWidget {
  const SubredditFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SubredditFormBloc>(
      create: (context) => getIt<SubredditFormBloc>(),
      child: BlocListener<SubredditFormBloc, SubredditFormState>(
        listener: (context, state) {
          state.maybeMap(
            savedSuccessfully: (state) {
              AutoRouter.of(context).pop();
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Add Subreddit'),
          ),
          body: const SubredditFormBody(),
        ),
      ),
    );
  }
}
