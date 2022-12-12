from subprocess import Popen as NewProcess

from flask import Flask, request

app = Flask(__name__)
pids_by_subreddit = {}
list_of_subreddits = ["politics", "gaming", "adventofcode", "programming", "sports", "news", "AskReddit",
                      "books", "jokes", "science", "technology", "worldnews", "food", "movies", "music"]


def start_producer_for_subreddit(subreddit):
    kp_process = NewProcess(["python3", "kafka-cluster/kafka_producer.py", "--subreddit", subreddit])
    pids_by_subreddit[subreddit].append(kp_process.pid)


def start_csv_consumer_for_subreddit(subreddit):
    kc_csv_process = NewProcess(["python3", "kafka-cluster/kafka_csv_consumer.py", "--subreddit", subreddit])
    pids_by_subreddit[subreddit].append(kc_csv_process.pid)


def start_websocket_consumer_for_subreddit(subreddit, web_socket_port):
    kc_ws_process = NewProcess(["python3", "kafka-cluster/kafka_web_socket_consumer.py",
                                "--subreddit", subreddit, "--web-socket-port", web_socket_port])
    pids_by_subreddit[subreddit].append(kc_ws_process.pid)


def start_server_for_subreddit_in_training_session(subreddit):
    if subreddit not in pids_by_subreddit.keys():
        pids_by_subreddit[subreddit] = []
    start_producer_for_subreddit(subreddit)
    start_csv_consumer_for_subreddit(subreddit)


@app.route("/server/start", methods=["POST"])
def start_server():
    try:
        all_servers = request.json["all_servers"]
        if all_servers == "true":
            for subreddit in list_of_subreddits:
                start_server_for_subreddit_in_training_session(subreddit)
            return {"status": "All servers started in training session"}, 200
        else:
            # run kafka producer in separate process
            subreddit = request.json["subreddit"]
            if subreddit not in pids_by_subreddit.keys():
                pids_by_subreddit[subreddit] = []

            start_producer_for_subreddit(subreddit)

            is_training_session = request.json["is_training_session"]
            if is_training_session == "true":
                # run kafka csv consumer in separate process
                start_csv_consumer_for_subreddit(subreddit)
            else:
                # run kafka websocket consumer in separate process
                web_socket_port = request.json["web_socket_port"]
                start_websocket_consumer_for_subreddit(subreddit, web_socket_port)

            return {"status": f"server started successfully for topic {subreddit}"}, 200
    except Exception as e:
        return {"status": "server failed to start", "error": str(type(e)) + str(e)}, 500


@app.route("/server/stop", methods=["POST"])
def stop_server():
    try:
        stop_all = request.json["all_servers"]
        if stop_all == "true":
            for subreddit in pids_by_subreddit.keys():
                for pid in pids_by_subreddit[subreddit]:
                    NewProcess(["kill", str(pid)])

            pids_by_subreddit.clear()
            return {"status": "all servers stopped successfully"}, 200
        else:
            subreddit = request.json["subreddit"]

            # kill pids associated with subreddit
            for pid in pids_by_subreddit[subreddit]:
                NewProcess(["kill", f"{str(pid)}"])

            pids_by_subreddit[subreddit].clear()
            return {"status": f"server stopped successfully for topic {subreddit}"}, 200
    except Exception as e:
        return {"status": "server failed to stop", "error": str(type(e)) + str(e)}, 500


@app.route("/subreddits", methods=["GET"])
def get_subreddits():
    return {"subreddits": list(pids_by_subreddit.keys())}, 200


if __name__ == '__main__':
    app.run(debug=True)
