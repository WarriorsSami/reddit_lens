import json
import os

from kafka import KafkaConsumer
import asyncio
import time
import websockets


SUBREDDIT = os.getenv("SUBREDDIT", "politics")
KAFKA_BUFFER_SIZE = os.getenv("KAFKA_BUFFER_SIZE", 10)
KAFKA_TOPIC = os.getenv("KAFKA_TOPIC", "reddit")
KAFKA_BOOTSTRAP_SERVER = os.getenv("KAFKA_BOOTSTRAP_SERVER", "localhost:9092")
WEB_SOCKET_HOST = os.getenv("WEB_SOCKET_HOST", "localhost")
WEB_SOCKET_PORT = os.getenv("WEB_SOCKET_PORT", 5000)

consumer = KafkaConsumer(
    KAFKA_TOPIC,
    bootstrap_servers=[KAFKA_BOOTSTRAP_SERVER],
    auto_offset_reset='earliest',
    enable_auto_commit=True,
    value_deserializer=lambda x: json.loads(x.decode('utf-8'))
)


async def handle_kafka(websocket):
    for message in consumer:
        message = message.value
        print(f"Consumed comment: {message['author']}")
        await websocket.send(json.dumps(message))


start_server = websockets.serve(handle_kafka, WEB_SOCKET_HOST, WEB_SOCKET_PORT)
print(f"Websocket server started at {WEB_SOCKET_HOST}:{WEB_SOCKET_PORT}")

asyncio.get_event_loop().run_until_complete(start_server)
asyncio.get_event_loop().run_forever()
