FROM python:3.8-slim
WORKDIR /app

COPY wolrd_development_kafka_connect_producer.py .
COPY requirements.txt .

COPY World_Development_Indicators (DK, GER, CHN).xlsx /app/data/

RUN pip install -r requirements.txt

CMD ["python", "wolrd_development_kafka_connect_producer.py"]