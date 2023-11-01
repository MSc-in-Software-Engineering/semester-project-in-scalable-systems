from pyspark.sql import SparkSession
import os

kafka_broker = os.environ.get("KAFKA_BROKER_ADDRESS")

spark = SparkSession \
    .builder \
    .appName("Spark kafka to hdfs") \
    .config("spark.streaming.stopGracefullyOnShutdown", True) \
    .config('spark.jars.packages', 'org.apache.spark:spark-sql-kafka-0-10_2.12:3.3.0') \
    .config("spark.sql.shuffle.partitions", 4) \
    .master("local[*]") \
    .getOrCreate()

df = spark \
  .readStream \
  .format("kafka") \
  .option("kafka.bootstrap.servers", kafka_broker) \
  .option("subscribe", "co2_electricity_emissions") \
  .option("startingOffsets", "earliest") \
  .load() 