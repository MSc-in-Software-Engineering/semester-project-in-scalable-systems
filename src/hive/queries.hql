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

CREATE EXTERNAL TABLE IF NOT EXISTS power_asset_electricity (
  asset_id INT,
  iso3_country STRING,
  original_inventory_sector STRING,
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  temporal_granularity STRING,
  gas VARCHAR(255),
  emissions_quantity INT,
  emissions_factor DECIMAL,
  emissions_factor_units STRING,
  capacity INT,
  capacity_units STRING,
  capacity_factor DECIMAL(10, 3),
  activity INT,
  activity_units STRING,
  created_date TIMESTAMP,
  modified_date TIMESTAMP,
  asset_name STRING,
  asset_type STRING, 
  st_astext STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/power/asset_electricity-generation_emissions'; 

CREATE EXTERNAL TABLE IF NOT EXISTS power_asset_generation_ownership (
  asset_id INT,
  asset_name STRING,
  owner_name STRING,
  owner_classification STRING,
  percentage_of_ownership STRING,
  owner_direct_parent STRING,
  owner_grouping STRING,
  operator_name STRING,
  percentage_of_operation STRING,
  data_source STRING,
  url STRING,
  recency STRING,
  created_date TIMESTAMP,
  original_inventory_sector STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/power/asset_electricity-generation_ownership';

CREATE EXTERNAL TABLE IF NOT EXISTS power_country_electricity_generation_emissions (
  iso3_country STRING,
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  original_inventory_sector STRING,
  gas STRING,
  emissions_quantity INT,
  emissions_quantity_units STRING,
  temporal_granularity STRING,
  created_date TIMESTAMP,
  modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/power/country_electricity-generation_emissions';

CREATE EXTERNAL TABLE IF NOT EXISTS power_country_other_energy_use_emissions (
  iso3_country STRING,
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  original_inventory_sector STRING,
  gas STRING,
  emissions_quantity INT,
  emissions_quantity_units STRING,
  temporal_granularity STRING,
  created_date TIMESTAMP,
  modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/power/country_other-energy-use_emissions';



