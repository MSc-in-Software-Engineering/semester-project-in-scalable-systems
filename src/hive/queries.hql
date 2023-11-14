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

CREATE TABLE country_biological_treatment_of_solid_waste_and_biogenic_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255), 
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255), 
    temporal_granularity VARCHAR(255), 
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/waste/country_biological-treatment-of-solid-waste-and-biogenic_emissions';

CREATE TABLE country_incineration_and_open_burning_of_waste_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255), 
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255), 
    temporal_granularity VARCHAR(255), 
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/waste/country_incineration-and-open-burning-of-waste_emissions';

CREATE TABLE country_solid_waste_disposal_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255), 
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255), 
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/waste/country_solid-waste-disposal_emissions';

CREATE TABLE country_wastewater_treatment_and_discharge_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255), 
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255), 
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/waste/country_wastewater-treatment-and-discharge_emissions';

CREATE TABLE asset_copper_mining_emissions (
    asset_id INT,
    iso3_country VARCHAR(3),
    original_inventory_sector VARCHAR(255),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    temporal_granularity VARCHAR(255), 
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    capacity DECIMAL(18, 6),
    capacity_units VARCHAR(255), 
    capacity_factor VARCHAR(255), 
    created_date TIMESTAMP,
    modified_date TIMESTAMP,
    asset_name VARCHAR(255),
    asset_type VARCHAR(255), 
    st_astext string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/mineral_extraction/asset_copper-mining_emissions';

CREATE TABLE asset_iron_mining_emissions (
    asset_id INT,
    iso3_country VARCHAR(3),
    original_inventory_sector VARCHAR(255),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    temporal_granularity VARCHAR(255),
    gas VARCHAR(255), 
    emissions_quantity DECIMAL(18, 6), 
    capacity DECIMAL(18, 6), 
    capacity_units VARCHAR(255), 
    capacity_factor VARCHAR(255), 
    created_date TIMESTAMP,
    modified_date TIMESTAMP,
    asset_name VARCHAR(255),
    asset_type VARCHAR(255), 
    st_astext string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/mineral_extraction/asset_iron-mining_emissions';

CREATE TABLE country_bauxite_mining_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255), 
    gas VARCHAR(255), 
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/mineral_extraction/country_bauxite-mining_emissions';


CREATE TABLE country_copper_mining_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255), 
    gas VARCHAR(255), 
    emissions_quantity DECIMAL(18, 6), 
    emissions_quantity_units VARCHAR(255), 
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/mineral_extraction/country_copper-mining_emissions';


CREATE TABLE country_iron_mining_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/mineral_extraction/country_iron-mining_emissions';


CREATE TABLE country_rock_quarrying_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
) 
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/mineral_extraction/country_rock-quarrying_emissions';


CREATE TABLE country_sand_quarrying_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/mineral_extraction/country_sand-quarrying_emissions';


CREATE TABLE asset_aluminum_emissions (
    asset_id INT,
    iso3_country VARCHAR(3),
    original_inventory_sector VARCHAR(255),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    temporal_granularity VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_factor DECIMAL(18, 6),
    emissions_factor_units VARCHAR(255),
    capacity DECIMAL(18, 6),
    capacity_units VARCHAR(255),
    capacity_factor DECIMAL(18, 6),
    created_date TIMESTAMP,
    modified_date TIMESTAMP,
    asset_name VARCHAR(255),
    asset_type VARCHAR(255),
    st_astext string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/manufacturing/asset_aluminum_emissions';


CREATE TABLE asset_cement_emissions (
    asset_id INT,
    iso3_country VARCHAR(3),
    original_inventory_sector VARCHAR(255),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    temporal_granularity VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_factor DECIMAL(18, 6),
    emissions_factor_units VARCHAR(255),
    capacity DECIMAL(18, 6),
    capacity_units VARCHAR(255),
    capacity_factor DECIMAL(18, 6),
    created_date TIMESTAMP,
    modified_date TIMESTAMP,
    asset_name VARCHAR(255),
    asset_type VARCHAR(255),
    st_astext string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/manufacturing/asset_cement_emissions';



CREATE TABLE asset_cement_ownership (
    asset_id INT,
    asset_name VARCHAR(255),
    owner_name VARCHAR(255),
    owner_classification VARCHAR(255),
    percentage_of_ownership DECIMAL(18, 6),
    owner_direct_parent VARCHAR(255),
    owner_grouping VARCHAR(255),
    operator_name VARCHAR(255),
    percentage_of_operation DECIMAL(18, 6),
    data_source VARCHAR(255),
    url VARCHAR(255),
    recency TIMESTAMP,
    created_date TIMESTAMP,
    original_inventory_sector VARCHAR(255)
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/manufacturing/asset_cement_ownership';


CREATE TABLE asset_steel_emissions (
    asset_id INT,
    iso3_country VARCHAR(3),
    original_inventory_sector VARCHAR(255),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    temporal_granularity VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_factor DECIMAL(18, 6),
    emissions_factor_units VARCHAR(255),
    capacity DECIMAL(18, 6),
    capacity_units VARCHAR(255),
    capacity_factor DECIMAL(18, 6),
    created_date TIMESTAMP,
    modified_date TIMESTAMP,
    asset_name VARCHAR(255),
    asset_type VARCHAR(255),
    st_astext string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/manufacturing/asset_steel_emissions';


CREATE TABLE asset_steel_ownership (
    asset_id INT,
    asset_name VARCHAR(255),
    owner_name VARCHAR(255),
    owner_classification VARCHAR(255),
    percentage_of_ownership DECIMAL(18, 6),
    owner_direct_parent VARCHAR(255),
    owner_grouping VARCHAR(255),
    operator_name VARCHAR(255),
    percentage_of_operation DECIMAL(18, 6),
    data_source VARCHAR(255),
    url VARCHAR(255),
    recency TIMESTAMP,
    created_date TIMESTAMP,
    original_inventory_sector VARCHAR(255)
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/manufacturing/asset_steel_ownership';

CREATE TABLE country_aluminum_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/manufacturing/country_aluminum_emissions';


CREATE TABLE country_cement_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/manufacturing/country_cement_emissions';


CREATE TABLE country_chemicals_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/manufacturing/country_chemicals_emissions';


CREATE TABLE country_other_manufacturing_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/manufacturing/country_other-manufacturing_emissions';

CREATE TABLE country_pulp_and_paper_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/manufacturing/country_pulp-and-paper_emissions';


CREATE TABLE country_steel_emissions (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/manufacturing/country_steel_emissions';


CREATE TABLE asset_coal_mining_emissions (
    asset_id INT,
    iso3_country VARCHAR(3),
    original_inventory_sector VARCHAR(255),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    temporal_granularity VARCHAR(255),
    lat_lon string, 
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_factor DECIMAL(18, 6),
    emissions_factor_units VARCHAR(255),
    capacity DECIMAL(18, 6),
    capacity_units VARCHAR(255),
    capacity_factor DECIMAL(18, 6),
    activity DECIMAL(18, 6),
    activity_units VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP,
    asset_name VARCHAR(255),
    asset_type VARCHAR(255),
    st_astext string 
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/fossil_fuel_operations/asset_coal-mining_emissions';

CREATE TABLE asset_oil_and_gas_production_and_transport_emissions (
    asset_id BIGINT,
    iso3_country VARCHAR(3),
    original_inventory_sector VARCHAR(255),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    temporal_granularity VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_factor DECIMAL(18, 9),
    emissions_factor_units VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP,
    asset_name VARCHAR(255),
    asset_type VARCHAR(255),
    st_astext string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/fossil_fuel_operations/asset_oil-and-gas-production-and-transport_emissions';

CREATE TABLE asset_oil_and_gas_production_and_transport_ownership (
    asset_id INT,
    asset_name VARCHAR(255),
    owner_name VARCHAR(255),
    owner_classification VARCHAR(255),
    percentage_of_ownership DECIMAL(18, 6),
    owner_direct_parent VARCHAR(255),
    owner_grouping VARCHAR(255),
    operator_name VARCHAR(255),
    percentage_of_operation DECIMAL(18, 6),
    data_source VARCHAR(255),
    url VARCHAR(255),
    recency TIMESTAMP,
    created_date TIMESTAMP,
    original_inventory_sector VARCHAR(255)
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/fossil_fuel_operations/asset_oil-and-gas-production-and-transport_ownership';

CREATE TABLE asset_oil_and_gas_refining_emissions (
    asset_id INT,
    iso3_country VARCHAR(3),
    original_inventory_sector VARCHAR(255),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    temporal_granularity VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_factor DECIMAL(18, 6),
    emissions_factor_units VARCHAR(255),
    capacity DECIMAL(18, 6),
    capacity_units VARCHAR(255),
    capacity_factor DECIMAL(18, 6),
    created_date TIMESTAMP,
    modified_date TIMESTAMP,
    asset_name VARCHAR(255),
    asset_type VARCHAR(255),
    st_astext string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/fossil_fuel_operations/asset_oil-and-gas-refining_emissions';

CREATE TABLE asset_oil_and_gas_refining_ownership (
    asset_id INT,
    iso3_country VARCHAR(3),
    original_inventory_sector VARCHAR(255),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    temporal_granularity VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_factor DECIMAL(18, 6),
    emissions_factor_units VARCHAR(255),
    capacity DECIMAL(18, 6),
    capacity_units VARCHAR(255),
    capacity_factor DECIMAL(18, 6),
    created_date TIMESTAMP,
    modified_date TIMESTAMP,
    asset_name VARCHAR(255),
    asset_type VARCHAR(255),
    st_astext string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/fossil_fuel_operations/asset_oil-and-gas-refining_ownership';

CREATE TABLE country_coal_mining_emission (
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/fossil_fuel_operations/country_coal-mining_emission';

CREATE TABLE country_oil_and_gas_production_and_transport_emissions(
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/fossil_fuel_operations/country_oil-and-gas-production-and-transport_emissions';

CREATE TABLE country_oil_and_gas_refining_emissions(
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/fossil_fuel_operations/country_oil-and-gas-refining_emissions';

CREATE TABLE country_oil_and_gas_refining_emissions(
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/fossil_fuel_operations/country_oil-and-gas-refining_emissions';

CREATE TABLE country_other_fossil_fuel_operations_emissions(
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/fossil_fuel_operations/country_other-fossil-fuel-operations_emissions';

CREATE TABLE country_solid_fuel_transformation_emissions(
    iso3_country VARCHAR(3),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    original_inventory_sector VARCHAR(255),
    gas VARCHAR(255),
    emissions_quantity DECIMAL(18, 6),
    emissions_quantity_units VARCHAR(255),
    temporal_granularity VARCHAR(255),
    created_date TIMESTAMP,
    modified_date TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/emissions/fossil_fuel_operations/country_solid-fuel-transformation_emissions';

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

CREATE EXTERNAL TABLE IF NOT EXISTS world_development_indicators (
  country_name STRING,
  country_code STRING,
  series_name STRING,
  series_code STRING,
  year_2015 INT,
  year_2016 INT,
  year_2017 INT,
  year_2018 INT,
  year_2019 INT,
  year_2020 INT,
  year_2021 INT,
  year_2022 INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
LOCATION '/user/wdi/';

CREATE EXTERNAL TABLE IF NOT EXISTS avro_records_table
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
WITH SERDEPROPERTIES (
  'avro.schema.literal'='{
    "type": "record",
    "name": "CO2Record",
    "fields": [
      {"name": "Minutes5UTC", "type": "string"},
      {"name": "Minutes5DK", "type": "string"},
      {"name": "PriceArea", "type": "string"},
      {"name": "CO2Emission", "type": "double"}
    ]
  }'
)
STORED AS
  INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'

LOCATION '/user/emissions/energinet/';