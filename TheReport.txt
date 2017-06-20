/*
Link: https://www.hackerrank.com/challenges/the-report/problem
Author Name: Anirudh Dhawan
*/

/*
This problem tests your knowlege of Joins and Case statement.
*/

/*  Solution  */

WITH C AS(
    SELECT a.name as name, b.grade as grade, a.marks as marks
    FROM Students as a
    INNER JOIN 
    Grades as b
    ON a.marks>=b.Min_Mark AND
    a.marks<=b.Max_Mark
)

SELECT CASE 
WHEN grade<8 then "NULL"
WHEN grade>= 8 then name
END AS Name, Grade, Marks
FROM C
ORDER BY Grade DESC,Name,Marks;