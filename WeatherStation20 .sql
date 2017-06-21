/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
Author: Anirudh Dhawan
*/

/*
This problem tests the usage of windowing functions.
*/

/* Solution */

WITH C AS (
    SELECT ROW_NUMBER() OVER(ORDER BY LAT_N) AS R,LAT_N
    FROM Station
)
SELECT FORMAT(LAT_N,'F4')
FROM C
WHERE R = (SELECT (COUNT(R)/2)+1 FROM C );