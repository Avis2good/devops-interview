from flask import Flask
import psycopg2
import os

app = Flask(__name__)

@app.route("/")
def world():
    conn = psycopg2.connect(
        host=os.getenv("POSTGRES_HOST", "postgres"),
        database='postgres',
        user='postgres',
        password=os.environ['POSTGRES_PASSWORD'])
    cur = conn.cursor()
    cur.execute("SELECT PHRASE FROM response")
    resp = cur.fetchone()
    return str(resp[0]), 200
