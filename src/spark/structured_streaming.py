from pyspark.sql import SparkSession
from pyspark.sql.functions import *
from pyspark.sql.types import *
import os
import logging

kafka_broker = os.environ.get("KAFKA_BROKER_ADDRESS","localhost:9092")

# Create spark session
spark = SparkSession \
    .builder \
    .appName("KafkaConsumer") \
    .getOrCreate()

# Got a lot of bloat warnings from kafka when moving offset so to not spam we only see warnings
spark.sparkContext.setLogLevel('WARN')

# The fakfa config
kafka_df = spark.readStream \
  .format("kafka") \
  .option("kafka.bootstrap.servers", kafka_broker) \
  .option("subscribe", "co2_electricity_emissions") \
  .load()

# The strucuture of the data from kafka converted to a spark schema
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

# The kafka_df is the data gotten from kafa, here we select the value from the kafka message and convert it to fit the schema
parsed_df = kafka_df.selectExpr("CAST(value AS STRING)").select(from_json(col("value"), schema).alias("data")).select("data.*")

# Here the records array data is gathered
exploded_df = parsed_df.selectExpr("total", "limit", "dataset", "explode(records) as record")

# Here the all the gathered data is distributed into columns based on the schema
final_df = exploded_df.select(
    "total",
    "limit",
    "dataset",
    col("record.Minutes5UTC").alias("Minutes5UTC"),
    col("record.Minutes5DK").alias("Minutes5DK"),
    col("record.PriceArea").alias("PriceArea"),
    col("record.CO2Emission").alias("CO2Emission")
)

# Write result into console later this will be directed into the hdfs
query = final_df.writeStream.outputMode("append").format("console").start()

# Listen for termination
query.awaitTermination()

spark.stop()