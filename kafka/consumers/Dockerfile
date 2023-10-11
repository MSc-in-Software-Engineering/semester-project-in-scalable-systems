FROM python:3.8-slim
COPY test_consumer.py .
COPY requirements.txt .
RUN pip install -r requirements.txt 
CMD ["python", "test_consumer.py"]