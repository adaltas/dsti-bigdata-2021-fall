SET hivevar:username=gauthier;

CREATE TABLE dsti_2021_fall_bda.${username}_nyc_drivers (
  driver_id INT,
  first_name STRING,
  last_name STRING,
  ssn INT,
  address STRING,
  certified BOOLEAN,
  wage_plan STRING
)
STORED AS ORC;
