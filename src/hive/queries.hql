CREATE EXTERNAL TABLE IF NOT EXISTS buildings (
  iso3_country STRING,
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  original_inventory_sector STRING,
  gas STRING,
  emissions_quantity INT,
  emissions_quantity_units STRING,
  temporal_granularity INT,
  created_date TIMESTAMP,
  modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/buildings';

CREATE EXTERNAL TABLE IF NOT EXISTS fluorinated_gases (
  iso3_country STRING,
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  original_inventory_sector STRING,
  gas STRING,
  emissions_quantity INT,
  emissions_quantity_units STRING,
  temporal_granularity INT,
  created_date TIMESTAMP,
  modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/fluorinated_gases';