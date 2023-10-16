/* Write your PL/SQL query statement below */
SELECT DISTINCT num AS ConsecutiveNums
FROM (SELECT id, num,
lag(num) over (order by id) prev_mum,
lead(num) over (order by id) next_num
FROM Logs)
WHERE num = prev_mum
AND num = next_num;
