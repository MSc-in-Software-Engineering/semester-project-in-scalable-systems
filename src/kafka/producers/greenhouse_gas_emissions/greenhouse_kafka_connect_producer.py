from confluent_kafka import Producer
import csv
import time
import os

kafka_broker = os.environ.get("KAFKA_BROKER_ADDRESS")



configuration = {
    'bootstrap.servers': kafka_broker,
    'client.id': 'greenhouse-kafka-connect-producer'
}
producer = Producer(configuration)


while True:
    try:
        with open('data/asset_enteric-fermentation_emissions.csv', newline='') as file:
            file_reader = csv.reader(file)
            for line in file_reader:
                data = ','.join(line)
                producer.produce('greenhouse_topic', value=data.encode('utf-8'))
                time.sleep(10) 

        producer.flush()
    finally:
        producer.flush()
