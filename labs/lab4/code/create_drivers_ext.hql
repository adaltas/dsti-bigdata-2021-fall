SET hivevar:username=gauthier;

CREATE EXTERNAL TABLE dsti_2021_fall_bda.${username}_nyc_drivers_ext (
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
LOCATION '/education/dsti_2021_fall_bda/${username}/lab4/nyc_drivers'
TBLPROPERTIES ('skip.header.line.count'='1');
