import argparse
import json
import csv
import os

from kafka import KafkaConsumer

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--subreddit", help="subreddit to consume from")

    args = parser.parse_args()
    SUBREDDIT = args.subreddit

    KAFKA_BUFFER_SIZE = os.getenv("KAFKA_BUFFER_SIZE", 10)
    KAFKA_BOOTSTRAP_SERVER = os.getenv("KAFKA_BOOTSTRAP_HOST", "localhost:9092")

    consumer = KafkaConsumer(
        SUBREDDIT,
        bootstrap_servers=[KAFKA_BOOTSTRAP_SERVER],
        auto_offset_reset='earliest',
        enable_auto_commit=True,
        value_deserializer=lambda x: json.loads(x.decode('utf-8'))
    )

    reddit_data = open('../reddit_users.csv', 'a')
    csv_writer = csv.writer(reddit_data)
    count = reddit_data.tell()

    for message in consumer:
        message = message.value
        print(f"(Topic: {SUBREDDIT}) Consumed comment (csv consumer): {message['author']}")

        if count == 0:
            header = message.keys()
            csv_writer.writerow(header)
            count = reddit_data.tell()
        csv_writer.writerow(message.values())

    reddit_data.close()
