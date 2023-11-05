from confluent_kafka import Producer
import pandas 
import time
import os

kafka_broker = os.environ.get("KAFKA_BROKER_ADDRESS")

configuration = {
    'bootstrap.servers': kafka_broker,
    'client.id': 'world-development-indicator-kafka-connect-producer'
}
producer = Producer(configuration)

while True:
    try:
        data = pandas.read_excel('data/asset_enteric-fermentation_emissions.xlsx')

        for index, row in data.iterrows():
            line = ','.join(map(str, row))
            print(line) 
            producer.produce('world_development_topic', value=line.encode('utf-8'))
            time.sleep(10)

        producer.flush()
    finally:
        producer.flush()