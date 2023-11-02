# Using the dev compose file
Right now the only setup of spark is implemented in docker-compose.dev.yml 

# Starting the structured streaming from Kafka

Until an automated procedure has been implemented you need to do it manually

run these commands inside the spark-master container:

```
cd
```
Then run this:

```
spark-submit --packages org.apache.spark:spark-sql-kafka-0-10_2.12:3.2.0 structured_streaming.py
```

Now the container should output the converted data in parquet format

