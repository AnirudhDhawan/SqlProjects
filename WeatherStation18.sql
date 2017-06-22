/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-18/problem
Author: Anirudh Dhawan
*/

/*Solution*/

WITH C AS (
    SELECT MIN(LAT_N) AS a,
           MIN(LONG_W) AS b,
           MAX(LAT_N) AS c,
           MAX(LONG_W) AS d
    FROM Station
)
SELECT FORMAT(ABS(a-c)+ABS(b-d),'F4')
FROM C