/* Write your PL/SQL query statement below */
SELECT id, movie, description, rating
FROM Cinema
WHERE mod(id,2) != 0  AND description NOT LIKE '%boring%'
ORDER BY rating desc;