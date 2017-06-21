/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-19/problem
Author: Anirudh Dhawan
*/

/*
This problem test the usage of aggregate funtions.
*/

/*Solution*/

WITH c as (
    SELECT MIN(LAT_N) AS a,
       MAX(LAT_N) AS b,
       MIN(LONG_W) AS c,
       MAX(LONG_W) AS d
       FROM station
)
SELECT FORMAT(SQRT(SQUARE(ABS(a-b))+SQUARE(ABS(c-d))),'F4')
FROM c
