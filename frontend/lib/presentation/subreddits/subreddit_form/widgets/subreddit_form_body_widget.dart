import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reddit_lens/application/subreddit_form/subreddit_form_bloc.dart';

class SubredditFormBody extends HookWidget {
  const SubredditFormBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameEditingController = useTextEditingController();

    return BlocBuilder<SubredditFormBloc, SubredditFormState>(
      builder: (context, state) => state.maybeMap(
        initial: (_) => Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 40,
          ),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: nameEditingController,
                  decoration: const InputDecoration(
                    labelText: 'Subreddit',
                    hintText: 'e.g. FlutterDev',
                    icon: Icon(
                      Icons.reddit,
                      size: 40,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<SubredditFormBloc>().add(
                          SubredditFormEvent.saved(
                            nameEditingController.text,
                          ),
                        );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: const Size(100, 40),
                    visualDensity: VisualDensity.comfortable,
                  ),
                  child: const Text('Save'),
                ),
              ],
            ),
          ),
        ),
        orElse: () => Container(),
      ),
    );
  }
}
