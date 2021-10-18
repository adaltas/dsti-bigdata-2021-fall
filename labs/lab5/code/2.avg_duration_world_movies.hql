SELECT avg(runtimeminutes) AS avg_duration
FROM dsti_2021_fall_bda.imdb_title_basics
WHERE primarytitle RLIKE '(^| )[Ww]orld';
