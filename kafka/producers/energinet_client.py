import requests
import json
import time
from confluent_kafka import Producer
import os

kafka_broker = os.environ.get("KAFKA_BROKER_ADDRESS", "localhost")

producer_conf = {"bootstrap.servers": kafka_broker, "client.id": "python-producer"}

producer = Producer(producer_conf)

while True:
    response = requests.get("https://api.energidataservice.dk/dataset/CO2Emis?limit=5")
    result = response.json()

    json_data = json.dumps(result).encode("utf-8")

    producer.produce("co2_electricity_emissions", value=json_data)

    time.sleep(5) 
