CREATE EXTERNAL TABLE IF NOT EXISTS dsti_2021_fall_bda.${hiveUsername}_nyc_drivers_ext (
  driver_id INT,
  name STRING,
  ssn INT,
  location STRING,
  certified STRING,
  wage_plan STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/education/dsti_2021_fall_bda/${hiveUsername}/lab4/nyc_drivers'
TBLPROPERTIES ('skip.header.line.count'='1');
