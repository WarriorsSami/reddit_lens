import json
import csv
import os

from kafka import KafkaConsumer

SUBREDDIT = os.getenv("SUBREDDIT", "politics")
KAFKA_BUFFER_SIZE = os.getenv("KAFKA_BUFFER_SIZE", 10)
KAFKA_TOPIC = os.getenv("KAFKA_TOPIC", "reddit")
KAFKA_BOOTSTRAP_SERVER = os.getenv("KAFKA_BOOTSTRAP_SERVER", "localhost:9092")

consumer = KafkaConsumer(
    KAFKA_TOPIC,
    bootstrap_servers=[KAFKA_BOOTSTRAP_SERVER],
    auto_offset_reset='earliest',
    enable_auto_commit=True,
    value_deserializer=lambda x: json.loads(x.decode('utf-8'))
)

reddit_data = open('reddit_users.csv', 'a')
csv_writer = csv.writer(reddit_data)
count = 0

for message in consumer:
    message = message.value
    print(f"Consumed comment: {message['author']}")

    if count == 0 and len(reddit_data.readlines()) == 0:
        header = message.keys()
        csv_writer.writerow(header)
        count += 1
    csv_writer.writerow(message.values())

reddit_data.close()
