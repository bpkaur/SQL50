/* Write your PL/SQL query statement below */
SELECT round(count(b.player_id) / count(a.player_id), 2) AS fraction
FROM
(SELECT player_id, min(event_date) AS first_login 
FROM Activity
GROUP BY player_id) a
LEFT JOIN Activity b
ON a.player_id = b.player_id AND b.event_date-a.first_login = 1;