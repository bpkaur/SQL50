/* Write your PL/SQL query statement below */
SELECT query_name,
round(avg(rating/position), 2) AS quality,
round(sum(CASE WHEN rating < 3 THEN 1 ELSE 0 END)/ count(rating)*100, 2)
AS poor_query_percentage 
FROM Queries
GROUP BY query_name;
