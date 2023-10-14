/* Write your PL/SQL query statement below */
SELECT r.contest_id, 
round((count(r.user_id)/(SELECT count(user_id)FROM users ))*100 ,2)
AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id;