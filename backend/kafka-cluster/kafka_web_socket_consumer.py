import argparse
import asyncio
import json
import os

import websockets
from kafka import KafkaConsumer

from backend.reddit_lens_model import RedditLensModel

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--subreddit", help="subreddit to consume from")
    parser.add_argument("--web-socket-port", help="web socket port")

    args = parser.parse_args()
    SUBREDDIT = args.subreddit
    WEB_SOCKET_PORT = args.web_socket_port

    KAFKA_BUFFER_SIZE = os.getenv("KAFKA_BUFFER_SIZE", 10)
    KAFKA_BOOTSTRAP_SERVER = os.getenv("KAFKA_BOOTSTRAP_HOST", "localhost:9092")
    WEB_SOCKET_HOST = os.getenv("WEB_SOCKET_HOST", "localhost")

    consumer = KafkaConsumer(
        SUBREDDIT,
        bootstrap_servers=[KAFKA_BOOTSTRAP_SERVER],
        auto_offset_reset='earliest',
        enable_auto_commit=True,
        value_deserializer=lambda x: json.loads(x.decode('utf-8'))
    )

    model = RedditLensModel()

    async def handle_kafka(websocket):
        for message in consumer:
            message = message.value
            print(f"(Topic: {SUBREDDIT}) Consumed comment (websocket consumer): {message['author']} "
                  f"- predicted as {model.predict(message)}")

            message = {
                "author": message["author"],
                "link_id": message["link_id"],
                "body": message["body"],
                "predicted": model.predict(message)[0],
            }
            message = json.dumps(message)

            await websocket.send(message)

    start_server = websockets.serve(handle_kafka, WEB_SOCKET_HOST, WEB_SOCKET_PORT)
    print(f"Websocket server started at {WEB_SOCKET_HOST}:{WEB_SOCKET_PORT}")

    asyncio.get_event_loop().run_until_complete(start_server)
    asyncio.get_event_loop().run_forever()
