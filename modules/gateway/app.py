
# Endpoints:
# Communication with - 
# 1. Ingest Module
# 2. Message Recive Endpoint for classifier
from flask import Flask
app = Flask(__name__)

@app.route('/health_check')
def health_check():
    return "Server running."

@app.route('/predict', methods=['POST', 'GET'])
def send_payload_to_ingest():
    # TODO update ingest then complete this
    pass
