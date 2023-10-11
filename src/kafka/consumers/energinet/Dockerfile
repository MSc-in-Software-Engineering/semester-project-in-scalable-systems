FROM python:3.8-slim
COPY energinet_consumer.py .
COPY requirements.txt .
RUN pip install -r requirements.txt 
CMD ["python", "energinet_consumer.py"]