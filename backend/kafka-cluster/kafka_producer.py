import argparse
import asyncio
import os
from json import dumps

from kafka import KafkaProducer

from reddit_api_consumer import reddit_api

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--subreddit", help="subreddit to consume from")

    args = parser.parse_args()
    SUBREDDIT = args.subreddit

    KAFKA_BUFFER_SIZE = os.getenv("KAFKA_BUFFER_SIZE", 10)
    KAFKA_BOOTSTRAP_SERVER = os.getenv("KAFKA_BOOTSTRAP_HOST", "localhost:9092")

    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    producer = KafkaProducer(
        bootstrap_servers=[KAFKA_BOOTSTRAP_SERVER],
        value_serializer=lambda x: dumps(x).encode('utf-8')
    )
    comments = []

    while True:
        new_comments = loop.run_until_complete(reddit_api.get_subreddit_comments(SUBREDDIT, KAFKA_BUFFER_SIZE))
        if isinstance(new_comments, Exception):
            print(f"Error getting comments: {new_comments}")
            continue

        old_set = set([comment["link_id"] for comment in comments])
        new_set = set([comment["link_id"] for comment in new_comments])

        comments_ids = list(new_set - old_set)
        for comment_id in comments_ids:
            comment = [comment for comment in new_comments if comment["link_id"] == comment_id][0]
            if isinstance(comment, Exception):
                print(f"Error getting comment: {comment}")
                continue
            producer.send(SUBREDDIT, value=comment)
            print(f"(Topic: {SUBREDDIT}) Produced comment: {comment['author']}")

        comments = new_comments
