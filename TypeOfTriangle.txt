/*
Link: https://www.hackerrank.com/challenges/what-type-of-triangle/problem
Author: Anirudh Dhawan
*/

/*
This problem tests using the case statement and mathematical expressions in the select clause.
*/

/* Solution */


SELECT
CASE 
WHEN A + B > C THEN CASE WHEN A = B AND B = C THEN 'Equilateral' WHEN A = B OR B = C OR A = C THEN 'Isosceles' WHEN A != B OR B != C OR A != C THEN 'Scalene' END 
ELSE 'Not A Triangle' END
FROM Triangles