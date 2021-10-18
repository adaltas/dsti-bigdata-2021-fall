SET hivevar:username=gauthier;

INSERT OVERWRITE TABLE dsti_2021_fall_bda.${username}_nyc_drivers
SELECT
  driver_id,
  split(name, ' ')[0] AS first_name,
  split(name, ' ')[1] AS last_name,
  ssn,
  location AS address,
  CASE certified
    WHEN 'Y' THEN true
    WHEN 'N' THEN false
  END AS certified,
  wage_plan
FROM dsti_2021_fall_bda.${username}_nyc_drivers_ext;
