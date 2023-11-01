FROM python:3.8-slim
COPY greenhouse_consumer.py .
COPY requirements.txt .
RUN pip install -r requirements.txt 
CMD ["python", "greenhouse_consumer.py"]