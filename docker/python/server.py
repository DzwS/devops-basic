from flask import Flask
from flask import render_template_string
from flask import request, jsonify

app = Flask(__name__)

@app.route('/v1/square/<int:value>')
def show_user_profile(value):
    square = value * value
    return jsonify(value=value, square=square)

@app.route('/')
def hello():
    return render_template_string('<h1>Hello, Flask!</h1>')