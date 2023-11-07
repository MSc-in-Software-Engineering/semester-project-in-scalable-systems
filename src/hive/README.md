# Setup database and table in Hive

In Hive, a "database" is a logical container for tables, similar to a namespace or a directory for organizing tables and data. Hive is primarily designed for handling and querying large volumes of data stored in Hadoop Distributed File System (HDFS) or other distributed file systems.

1. Go into the Hive container, by first running:
    ```
    docker ps
    ```
1. Find the container id and execute a bash shell in it:
    ```
    docker exec -it [container id] bash
    ```
1. Initialize Hive
    ```
    hive
    ```
1. Create a database in hive
    ```
    CREATE DATABASE name;
    ```
1.  Use the database
    ```
    USE name;
    ```
1.  Setup table
    ```
    CREATE EXTERNAL TABLE table_name (
        column1 STRING,
        column2 INT,
        -- Define columns matching the structure of your CSV
    )
    ROW FORMAT DELIMITED
    FIELDS TERMINATED BY ','
    LOCATION '/user/your_hdfs_directory/';
    ```
1. Drop table if needed
    ```
    DROP TABLE table_name;
    ```
1. Drop database if needed
    ```
    DROP DATABASE database_name;
    ```
1. Select results from the table structure created querying HDFS
    ```
    SELECT * FROM table_name;
    ```