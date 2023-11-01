FROM python:3.8-slim
WORKDIR /app

COPY greenhouse_kafka_connect_producer.py .
COPY requirements.txt .

COPY asset_enteric-fermentation_emissions.csv /app/data/

RUN pip install -r requirements.txt

CMD ["python", "greenhouse_kafka_connect_producer.py"]