/*
Link: https://www.hackerrank.com/challenges/weather-observation-station-17/problem
Author: Anirudh Dhawan
*/

/*Solution*/

SELECT FORMAT(LONG_W,'F4')
FROM STATION
WHERE ID=(
SELECT TOP 1 ID
FROM STATION
WHERE LAT_N>38.7780
ORDER BY LAT_N ASC
)