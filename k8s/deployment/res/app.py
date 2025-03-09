from flask import Flask, jsonify
import redis

app = Flask(__name__)
r = redis.Redis(host='redis', port=6379)

@app.route('/increment', methods=['POST'])
def increment():
    count = r.incr('counter')
    return jsonify(count=count)

@app.route('/')
def index():
    return app.send_static_file('index.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
