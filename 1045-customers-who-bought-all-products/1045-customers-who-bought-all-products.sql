/* Write your PL/SQL query statement below */
SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING count(distinct product_key) =(SELECT count(*) FROM Product);