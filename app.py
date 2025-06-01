from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello Dosto, This is basic app to how to containerize a python app' 
@app.route('/health')
def health():
    return 'Server is up and running'