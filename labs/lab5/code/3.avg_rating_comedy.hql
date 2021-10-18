SELECT avg(averagerating) AS avg_rating
FROM (
  SELECT
    tconst
  FROM dsti_2021_fall_bda.imdb_title_basics
  WHERE array_contains(genres, 'Comedy')
) titles
JOIN dsti_2021_fall_bda.imdb_title_ratings ratings
ON titles.tconst = ratings.tconst;
