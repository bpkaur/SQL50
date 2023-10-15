/* Write your PL/SQL query statement below */
WITH cte1 AS 
(SELECT name, rank() over(ORDER BY count(m.user_id) DESC, name) AS rn 
FROM movierating m
JOIN users u
ON m.user_id = u.user_id  
GROUP BY name),
cte2 AS 
(SELECT title, rank() over (order by avg(rating) DESC, title) AS rn 
FROM movierating m 
JOIN movies ms
ON m.movie_id = ms.movie_id  
WHERE to_char(created_at,'YYYY-MM') = '2020-02' 
GROUP BY title)


SELECT name AS results 
FROM cte1 WHERE rn = 1
union all
SELECT title AS results 
FROM cte2 WHERE rn = 1
