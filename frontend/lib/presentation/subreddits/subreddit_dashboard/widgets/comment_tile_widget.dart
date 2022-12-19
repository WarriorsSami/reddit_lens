import 'package:flutter/material.dart';
import 'package:reddit_lens/domain/comments/comment_entity.dart';
import 'package:reddit_lens/domain/core/user_type.dart';

class CommentTile extends StatelessWidget {
  final CommentEntity comment;

  const CommentTile({
    Key? key,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.lightBlueAccent[100],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.reddit,
                size: 50,
                color: Colors.red,
              ),
              const SizedBox(width: 8),
              Text(
                userTypeNameColorPairs[UserType.troll]!.value1,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: userTypeNameColorPairs[UserType.troll]?.value2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            comment.body ?? 'No body',
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Text(
                  comment.linkId ?? 'No link id',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Text(
                  "@${comment.author ?? 'No author'}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
