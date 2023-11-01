from pyspark.sql import SparkSession
from pyspark.sql.functions import *
from pyspark.sql.types import *
import os
import logging

kafka_broker = os.environ.get("KAFKA_BROKER_ADDRESS","localhost:9092")


spark = SparkSession \
    .builder \
    .appName("KafkaConsumer") \
    .getOrCreate()

spark.sparkContext.setLogLevel('WARN')

kafka_df = spark.readStream \
  .format("kafka") \
  .option("kafka.bootstrap.servers", kafka_broker) \
  .option("subscribe", "co2_electricity_emissions") \
  .load()

schema = StructType([
    StructField("total", StringType(), True),
    StructField("limit", StringType(), True),
    StructField("dataset", StringType(), True),
    StructField("records", ArrayType(StructType([
        StructField("Minutes5UTC", StringType(), True),
        StructField("Minutes5DK", StringType(), True),
        StructField("PriceArea", StringType(), True),
        StructField("CO2Emission", FloatType(), True)
    ])), True)
])

parsed_df = kafka_df.selectExpr("CAST(value AS STRING)").select(from_json(col("value"), schema).alias("data")).select("data.*")

exploded_df = parsed_df.selectExpr("total", "limit", "dataset", "explode(records) as record")

final_df = exploded_df.select(
    "total",
    "limit",
    "dataset",
    col("record.Minutes5UTC").alias("Minutes5UTC"),
    col("record.Minutes5DK").alias("Minutes5DK"),
    col("record.PriceArea").alias("PriceArea"),
    col("record.CO2Emission").alias("CO2Emission")
)

query = final_df.writeStream.outputMode("append").format("console").start()

query.awaitTermination()

spark.stop()