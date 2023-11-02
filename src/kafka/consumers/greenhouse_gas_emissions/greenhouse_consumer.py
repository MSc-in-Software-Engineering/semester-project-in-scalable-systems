from confluent_kafka import Consumer, KafkaError
import os
from time import sleep

kafka_broker = os.environ.get("KAFKA_BROKER_ADDRESS", "localhost")

consumer_conf = {
    "bootstrap.servers": kafka_broker,
    "group.id": "co2_emissions",
    "auto.offset.reset": "earliest",
}

consumer = Consumer(consumer_conf)

consumer.subscribe(
    ["greenhouse_topic"]
) 

while True:
    msg = consumer.poll(10) 

    if msg is None:
        continue

    if msg.error():
        if msg.error().code() == KafkaError._PARTITION_EOF:
            print("Reached end of partition")
        else:
            print("Error while consuming message: {}".format(msg.error()))
    else:
        message_value = msg.value().decode("utf-8")
        print("Received message: {}".format(message_value))
        
    sleep(5)
        
consumer.close()
