FROM python:3.8-slim
COPY energinet_client.py .
COPY requirements.txt .
RUN pip install -r requirements.txt 
CMD ["python", "energinet_client.py"]