/* Write your PL/SQL query statement below */
SELECT
CASE WHEN mod(id,2)=0 THEN lag(id,1) over(order by id)
ELSE coalesce(lead(id,1) over(order by id),id) END as id,
student
FROM seat
ORDER BY 1;