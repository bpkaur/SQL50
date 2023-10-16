/* Write your PL/SQL query statement below */
WITH cte1 AS 
(SELECT visited_on, sum(amount) AS amount 
FROM customer 
GROUP BY visited_on) 
,cte2 AS 
(SELECT visited_on, 
sum(amount) over(order by visited_on range between  6  preceding and current row) AS amount, round(sum(amount) over(order by visited_on range between  6  preceding and current row)/7, 2) AS average_amount, 
min(visited_on) over() AS start_date
FROM cte1)

SELECT to_char(visited_on,'yyyy-mm-dd') as visited_on, amount, average_amount
FROM cte2 
WHERE visited_on >= start_date + 6;


