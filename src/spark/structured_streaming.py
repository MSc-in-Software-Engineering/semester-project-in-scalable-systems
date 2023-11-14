from pyspark.sql import SparkSession
from pyspark.sql.functions import *
from pyspark.sql.types import *
import os

kafka_broker = os.environ.get("KAFKA_BROKER_ADDRESS", "localhost:9092")

hdfs_host = os.environ.get("HDFS_ADDRESS_AND_PORT")
hdfs_path = os.environ.get("HDFS_PATH")

# Create spark session
spark = (
    SparkSession.builder.appName("KafkaConsumer")
    .config("spark.sql.adaptive.enabled", "false")
    .getOrCreate()
)

# Got a lot of bloat warnings from kafka when moving offset so to not spam we only see warnings
spark.sparkContext.setLogLevel("WARN")

# The kafka config
df = (
    spark.readStream.format("kafka")
    .option("kafka.bootstrap.servers", kafka_broker)
    .option("subscribe", "co2_electricity_emissions")
    .load()
)

# Define the schema for the records
schema = StructType([
    StructField("Minutes5UTC", StringType(), True),
    StructField("Minutes5DK", StringType(), True),
    StructField("PriceArea", StringType(), True),
    StructField("CO2Emission", DoubleType(), True)
])

# Parse the JSON string and explode the records array
df = df.selectExpr("CAST(value AS STRING)") \
    .selectExpr("from_json(value, 'records ARRAY<STRUCT<Minutes5UTC:STRING, Minutes5DK:STRING, PriceArea:STRING, CO2Emission:DOUBLE>>') AS data") \
    .selectExpr("EXPLODE(data.records) AS record") \
    .select("record.Minutes5UTC", "record.Minutes5DK", "record.PriceArea", "record.CO2Emission")

# # Display the records in Avro format
# query = df \
#     .writeStream \
#     .outputMode("append") \
#     .format("console") \
#     .option("truncate", "false") \
#     .start()

# Write result into console later this will be directed into the hdfs
# query = final_df.writeStream.outputMode("append").format("console").start()
query = (
    df.writeStream.format("avro")
    .option("checkpointLocation", "/tmp/checkpoint-location")
    .option("compression", "uncompressed")
    .outputMode("append")
    .option("path", hdfs_host + hdfs_path)
    .start()
)

# Listen for termination
query.awaitTermination()

spark.stop()
