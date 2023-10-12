/* Write your PL/SQL query statement below */
WITH cte AS
(SELECT v.customer_id, v.visit_id, t.transaction_id
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id)

SELECT customer_id, COUNT(customer_id) AS count_no_trans
FROM cte
WHERE transaction_id IS NULL
GROUP BY customer_id;