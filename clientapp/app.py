from flask import Flask
import requests
import os

app = Flask(__name__)

@app.route("/")
def hello():
    resp = requests.get(f"http://{os.getenv('DBAPP_HOST', 'dbapp')}:5000/")

    return f"Hello, {resp.text}"
