from subprocess import Popen as NewProcess

from flask import Flask, request

app = Flask(__name__)
pids_by_subreddit = {}


@app.route("/server/start", methods=["POST"])
def start_server():
    try:
        subreddit = request.json["subreddit"]
        web_socket_port = request.json["web_socket_port"]

        if subreddit not in pids_by_subreddit.keys():
            pids_by_subreddit[subreddit] = []

        is_training_session = bool(request.json["is_training_session"])
        if is_training_session:
            # run kafka csv consumer in separate process
            kc_csv_process = NewProcess(["python3", "kafka-cluster/kafka_csv_consumer.py", "--subreddit", subreddit])
            pids_by_subreddit[subreddit].append(kc_csv_process.pid)

        # run kafka producer and web socket consumer in separate processes
        kp_process = NewProcess(["python3", "kafka-cluster/kafka_producer.py", "--subreddit", subreddit])
        pids_by_subreddit[subreddit].append(kp_process.pid)
        kc_ws_process = NewProcess(["python3", "kafka-cluster/kafka_web_socket_consumer.py",
                                    "--subreddit", subreddit, "--web-socket-port", web_socket_port])
        pids_by_subreddit[subreddit].append(kc_ws_process.pid)

        return {"status": f"server started successfully for topic {subreddit}"}, 200
    except Exception as e:
        return {"status": "server failed to start", "error": str(type(e)) + str(e)}, 500


@app.route("/server/stop", methods=["POST"])
def stop_server():
    try:
        subreddit = request.json["subreddit"]

        # kill pids associated with subreddit
        for pid in pids_by_subreddit[subreddit]:
            NewProcess(["kill", f"{str(pid)}"])

        pids_by_subreddit[subreddit] = []

        return {"status": f"server stopped successfully for topic {subreddit}"}, 200
    except Exception as e:
        return {"status": "server failed to stop", "error": str(type(e)) + str(e)}, 500


if __name__ == '__main__':
    app.run(debug=True)
